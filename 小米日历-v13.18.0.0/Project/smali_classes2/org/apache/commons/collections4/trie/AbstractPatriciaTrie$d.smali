.class final Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;
.super Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$g;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;,
        Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field private final e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.e;"
        }
    .end annotation
.end field

.field private f:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private g:I

.field final synthetic h:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie<",
            "TK;TV;>.e;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->h:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$g;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$h;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->g:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->h:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 4
    .line 5
    iget v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->g:I

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 10
    .line 11
    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->o(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 16
    .line 17
    invoke-static {v2}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->p(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 22
    .line 23
    invoke-static {v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->q(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->subtree(Ljava/lang/Object;II)Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->f:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 32
    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->h:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;

    .line 34
    .line 35
    iget v0, v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;->modCount:I

    .line 36
    .line 37
    iput v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->g:I

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->f:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 53
    .line 54
    invoke-static {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->q(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->f:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 59
    .line 60
    iget v1, v3, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    .line 61
    .line 62
    if-le v0, v1, :cond_2

    .line 63
    .line 64
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;

    .line 65
    .line 66
    invoke-direct {v0, p0, v3}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$b;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_2
    new-instance v0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;

    .line 71
    .line 72
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 73
    .line 74
    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->o(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 79
    .line 80
    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->p(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 85
    .line 86
    invoke-static {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->q(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    move-object v1, v0

    .line 91
    move-object v2, p0

    .line 92
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d$a;-><init>(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;Ljava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    return-object v0
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$d;->e:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;->n(Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$e;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
