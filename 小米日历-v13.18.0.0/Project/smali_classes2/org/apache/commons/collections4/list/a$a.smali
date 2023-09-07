.class public Lorg/apache/commons/collections4/list/a$a;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lhc/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lhc/u<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/apache/commons/collections4/list/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected b:Lorg/apache/commons/collections4/list/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:Lorg/apache/commons/collections4/list/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected e:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/a<",
            "TE;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 5
    .line 6
    iget v0, p1, Lorg/apache/commons/collections4/list/a;->modCount:I

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/commons/collections4/list/a$a;->e:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/collections4/list/a;->getNode(IZ)Lorg/apache/commons/collections4/list/a$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 16
    .line 17
    iput p2, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 18
    .line 19
    return-void
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
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections4/list/a;->addNodeBefore(Lorg/apache/commons/collections4/list/a$d;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 13
    .line 14
    iget p1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 19
    .line 20
    iget p1, p0, Lorg/apache/commons/collections4/list/a$a;->e:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lorg/apache/commons/collections4/list/a$a;->e:I

    .line 25
    .line 26
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method protected b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 2
    .line 3
    iget v0, v0, Lorg/apache/commons/collections4/list/a;->modCount:I

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/commons/collections4/list/a$a;->e:I

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

.method protected c()Lorg/apache/commons/collections4/list/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
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

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 4
    .line 5
    iget-object v1, v1, Lorg/apache/commons/collections4/list/a;->header:Lorg/apache/commons/collections4/list/a$d;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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

.method public hasPrevious()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/commons/collections4/list/a$d;->a:Lorg/apache/commons/collections4/list/a$d;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 6
    .line 7
    iget-object v1, v1, Lorg/apache/commons/collections4/list/a;->header:Lorg/apache/commons/collections4/list/a$d;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
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

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->hasNext()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/a$d;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 17
    .line 18
    iput-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 19
    .line 20
    iget-object v1, v1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 21
    .line 22
    iput-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 23
    .line 24
    iget v1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    iput v1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "No element at index "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "."

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
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

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
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

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->hasPrevious()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/apache/commons/collections4/list/a$d;->a:Lorg/apache/commons/collections4/list/a$d;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/a$d;->a()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 21
    .line 22
    iput-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 23
    .line 24
    iget v1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    iput v1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 32
    .line 33
    const-string v1, "Already at start of list."

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
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

.method public previousIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->nextIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
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

.method public remove()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, v1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->c()Lorg/apache/commons/collections4/list/a$d;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/a;->removeNode(Lorg/apache/commons/collections4/list/a$d;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->c()Lorg/apache/commons/collections4/list/a$d;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/a;->removeNode(Lorg/apache/commons/collections4/list/a$d;)V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    iput v0, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 41
    .line 42
    iget v0, p0, Lorg/apache/commons/collections4/list/a$a;->e:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    iput v0, p0, Lorg/apache/commons/collections4/list/a$a;->e:I

    .line 47
    .line 48
    return-void
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

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->c()Lorg/apache/commons/collections4/list/a$d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/a$d;->b(Ljava/lang/Object;)V

    .line 9
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
.end method
