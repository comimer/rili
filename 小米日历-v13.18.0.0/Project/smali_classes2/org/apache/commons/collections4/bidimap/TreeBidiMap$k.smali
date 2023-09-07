.class abstract Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "k"
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field b:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private e:I

.field final synthetic f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->a:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:I

    .line 13
    .line 14
    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    aget-object v0, v0, v1

    .line 23
    .line 24
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->c:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->b:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->d:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 34
    .line 35
    return-void
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
.method protected b()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->c:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->c:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->b:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->d:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->a:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->c:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->b:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0
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

.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->c:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->b:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->b:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->e:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->b:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->c:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 36
    .line 37
    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->a:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    aget-object v1, v1, v2

    .line 48
    .line 49
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->a:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->d:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->f:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    .line 59
    .line 60
    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->a:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    .line 61
    .line 62
    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->d:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw v0
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
