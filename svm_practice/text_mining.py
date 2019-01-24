#!/usr/bin/env python
# coding: utf-8

# In[57]:


import tensorflow as tf
import math
import collections
from collections import Counter
from collections import defaultdict
from sklearn import svm
from sklearn.metrics import confusion_matrix
from sklearn.model_selection import train_test_split


# In[58]:


# ファイル読み込み
with tf.gfile.GFile('output.txt', mode='r') as source_file:
    input_documents = source_file.readlines()


# In[59]:


# ラベル(ドキュメント内の全ての単語をその順番でラベルづけ)
train_labels = []

# 各ドキュメントのラベル
document_labels = []

# テスト用特徴ベクトル
test_features = []


# In[60]:


# TF-IDF
N = len(input_documents)
words = ''.join(input_documents).split()

count = collections.Counter(words).most_common()

# ディクショナリ作成
rdic = [i[0] for i in count]  # wordのリストを作成
dic = { w: i for i, w in enumerate(rdic) }  # { word : index }のディクショナリを作成

# countの何番目にあるのかの情報を持っている配列をwordsの順番で作成
data = [dic[word] for word in words]


# In[61]:


# TF-IDF計算
doc_tf_table = defaultdict(Counter)
df_table = Counter()
doc_tfidf_table = defaultdict(Counter)

# ドキュメントごとに必要な情報を数え上げる
for index, document in enumerate(input_documents):
    words = document.split()

    # 単一ドキュメント内での出現回数
    for word in words:
        doc_tf_table[index][word] += 1
    
    # 全ドキュメント内での出現回数
    for key in doc_tf_table[index].keys():
        df_table[key] += 1


for index, document in enumerate(input_documents):

    document_labels.append(document.split()[0])
    doc_tfidf_table[index] = { k : 0 for k in rdic }

    # TF-IDF計算
    for key in doc_tf_table[index].keys():
        doc_tfidf_table[index][key] = doc_tf_table[index][key] * math.log(N / df_table[key])


# In[62]:


# データ前処理
articles = list(doc_tfidf_table.values())
features = []
for article in articles:
    features.append(list(article.values()))
(X_train, X_test, Y_train, Y_test) = train_test_split(features, document_labels, test_size=0.2, shuffle=True)


# In[63]:


# SVM (参考：http://may46onez.hatenablog.com/entry/2016/02/19/152532)
classify = svm.SVC(gamma='scale')  # to avoid warning about changing default value of gamma at sklearn ver 0.22
classify.fit(X_train, Y_train)


# In[64]:


# テストデータに対して推定する
predicted = classify.predict(X_test)


# In[65]:


accuracy = 0
for index, expected in enumerate(Y_test):
    if predicted[index] == expected:
        accuracy += 1

print('accuracy : ' + str(accuracy / len(Y_test)))


# In[66]:


print(confusion_matrix(predicted, Y_test))

