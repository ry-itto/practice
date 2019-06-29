import copy

def search(_from, _to, relation_list: [[int]]):
    print(f"{_from} {_to} {relation_list}")
    if not relation_list[_from]:
        print("no")
        return
    if _to in relation_list[_from]:
        print("yes")
        return
    for relation in relation_list[_from]:
        copied = copy.deepcopy(relation_list)
        copied[_from].remove(relation)
        copied[relation].remove(_from)
        search(relation, _to, copied)
        return

n, m = map(int, input().split())

id_list = [i for i in range(n)]

friend_relation_list = [[] for i in range(n)]
for i in range(m):
    _from, _to = map(int, input().split())
    friend_relation_list[_from].append(_to)
    friend_relation_list[_to].append(_from)

questions = []
q = int(input())
for i in range(q):
    _from, _to = map(int, input().split())
    questions.append([_from, _to])

for question in questions:
    _from = question[0]
    _to = question[1]
    print("=====")
    search(_from, _to, copy.deepcopy(friend_relation_list))
    
