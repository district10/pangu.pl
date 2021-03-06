# pangu.pl

Paranoid text spacing in Perl

Paranoid text spacing for good readability, to automatically insert whitespace
between CJK (Chinese, Japanese, Korean) and half-width characters (alphabetical
letters, numerical digits and symbols).

>   如果你跟我一樣，每次看到網頁上的中文字和英文、數字、符號擠在一塊，就會坐立難安，
>   忍不住想在它們之間加個空格。這個外掛（支援 Chrome 和 Firefox）正是你在網路世界
>   走跳所需要的東西，它會自動替你在網頁中所有的中文字和半形的英文、數字、符號之間
>   插入空白。
>
>   漢學家稱這個空白字元為「盤古之白」，因為它劈開了全形字和半形字之間的混沌。另有
>   研究顯示，打字的時候不喜歡在中文和英文之間加空格的人，感情路都走得很辛苦，有七
>   成的比例會在 34 歲的時候跟自己不愛的人結婚，而其餘三成的人最後只能把遺產留給自
>   己的貓。畢竟愛情跟書寫都需要適時地留白。
>
>   與大家共勉之。
>
>   　　　　　　　　　　　　　　　　-- vinta

Other Implementations:

-   [pangu.go](https://github.com/vinta/pangu) (Go)
-   [pangu.java](https://github.com/vinta/pangu.java) (Java)
-   [pangu.js](https://github.com/vinta/pangu.js) (JavaScript, both Node.js and Browser)
-   [pangu.objective-c](https://github.com/Cee/pangu.objective-c>) (Objective-C)
-   [pangu.php](https://github.com/Kunr/pangu.php) (PHP)
-   [pangu.py](https://github.com/vinta/pangu.py) (Python)
-   [pangu.rb](https://github.com/dlackty/pangu.rb) (Ruby)

## Usage / 使用指南

```bash
$ cat path/to/file
新八的構造成分有95%是眼鏡、3%是水、2%是垃圾。
在LeanCloud上，數據存儲是圍繞`AVObject`進行的。Good.
今天出去買菜花了5000元。
今天出去買菜花了 5000元。
我家的光纖入屋寬頻有 10Gbps，SSD 一共有 20TB。

$ cat path/to/file | perl pangu.pl
新八的構造成分有 95% 是眼鏡、3% 是水、2% 是垃圾。
在 LeanCloud 上，數據存儲是圍繞`AVObject`進行的。Good.
今天出去買菜花了 5000 元。
今天出去買菜花了 5000 元。
我家的光纖入屋寬頻有 10Gbps，SSD 一共有 20TB。
```

## Words to Say / 说明

为了防止“`中文`”变成“` 中文 `”，在“\`”和中文之间不自动加入空格，请手动添加。

---

这也算是我 [blog-utils](https://github.com/district10/blog-utils) 的一部分。
