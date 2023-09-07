.class public Lorg/apache/commons/collections4/list/CursorableLinkedList$a;
.super Lorg/apache/commons/collections4/list/a$a;
.source "CursorableLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/a$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field f:Z

.field g:Z

.field h:Z


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/a$a;-><init>(Lorg/apache/commons/collections4/list/a;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->g:Z

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->h:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->f:Z

    .line 11
    .line 12
    return-void
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
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/a$a;->add(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 9
    .line 10
    return-void
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
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 7
    .line 8
    const-string v1, "Cursor closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
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

.method protected d(Lorg/apache/commons/collections4/list/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected e(Lorg/apache/commons/collections4/list/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/collections4/list/a$d;->a:Lorg/apache/commons/collections4/list/a$d;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/apache/commons/collections4/list/a$d;->a:Lorg/apache/commons/collections4/list/a$d;

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->g:Z

    .line 21
    .line 22
    :goto_0
    return-void
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

.method protected f(Lorg/apache/commons/collections4/list/a$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/a$d<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v3, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 8
    .line 9
    if-ne p1, v3, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 14
    .line 15
    iput-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 16
    .line 17
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->h:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 26
    .line 27
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->h:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 31
    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    iput-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 35
    .line 36
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->h:Z

    .line 37
    .line 38
    iget p1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 39
    .line 40
    sub-int/2addr p1, v2

    .line 41
    iput p1, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->g:Z

    .line 45
    .line 46
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->h:Z

    .line 47
    .line 48
    :goto_0
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
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a$a;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a$a;->hasPrevious()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a$a;->next()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public nextIndex()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 8
    .line 9
    iget-object v2, v1, Lorg/apache/commons/collections4/list/a;->header:Lorg/apache/commons/collections4/list/a$d;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/a;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iget-object v1, v2, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 22
    .line 23
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/a$a;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iget-object v1, v1, Lorg/apache/commons/collections4/list/a$d;->b:Lorg/apache/commons/collections4/list/a$d;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput v0, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 33
    .line 34
    :goto_1
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->g:Z

    .line 36
    .line 37
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/list/a$a;->c:I

    .line 38
    .line 39
    return v0
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

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a$a;->previous()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public bridge synthetic previousIndex()I
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a$a;->previousIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
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

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->d:Lorg/apache/commons/collections4/list/a$d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->h:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->b()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->c()Lorg/apache/commons/collections4/list/a$d;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/a;->removeNode(Lorg/apache/commons/collections4/list/a$d;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$a;->h:Z

    .line 24
    .line 25
    return-void
    .line 26
    .line 27
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/a$a;->set(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method
