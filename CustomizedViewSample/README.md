# Swift[カスタムビューのサンプル]

## 備考
- カスタムビューで定義したxibでは File's owner と View のCustom Class両方に同時に付けておいてしまうと無限ループのようになってしまい，うまく行かない。File's ownerにのみ指定するようにする。
