.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:I

.field c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b:I

    .line 18
    .line 19
    iget p1, p1, Lorg/apache/commons/collections4/map/a;->modCount:I

    .line 20
    .line 21
    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->i:I

    .line 22
    .line 23
    return-void
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
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 2
    .line 3
    iget v0, v0, Lorg/apache/commons/collections4/map/a;->modCount:I

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->i:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
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

.method private e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
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


# virtual methods
.method protected c()Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 5
    .line 6
    return-object v0
    .line 7
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

.method protected d()Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;->a()Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 32
    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    .line 38
    .line 39
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 47
    .line 48
    return-object v0
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
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

.method public hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b()V

    .line 2
    .line 3
    .line 4
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 11
    .line 12
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b:I

    .line 13
    .line 14
    :goto_1
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 21
    .line 22
    iget-object v0, v0, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    .line 23
    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 30
    .line 31
    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b:I

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    return v0

    .line 42
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->h:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;->a()Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x1

    .line 70
    return v0
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
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

.method public remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 23
    .line 24
    iget v0, v0, Lorg/apache/commons/collections4/map/a;->modCount:I

    .line 25
    .line 26
    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->i:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v0
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
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
