.class public Lorg/apache/commons/collections4/list/a$c;
.super Lorg/apache/commons/collections4/list/a$a;
.source "AbstractLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
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
.field protected final f:Lorg/apache/commons/collections4/list/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/a$b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/a$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/a$b<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/apache/commons/collections4/list/a$b;->a:Lorg/apache/commons/collections4/list/a;

    .line 2
    .line 3
    iget v1, p1, Lorg/apache/commons/collections4/list/a$b;->b:I

    .line 4
    .line 5
    add-int/2addr p2, v1

    .line 6
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/list/a$a;-><init>(Lorg/apache/commons/collections4/list/a;I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/collections4/list/a$c;->f:Lorg/apache/commons/collections4/list/a$b;

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
.method public add(Ljava/lang/Object;)V
    .locals 1
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
    iget-object p1, p0, Lorg/apache/commons/collections4/list/a$c;->f:Lorg/apache/commons/collections4/list/a$b;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 7
    .line 8
    iget v0, v0, Lorg/apache/commons/collections4/list/a;->modCount:I

    .line 9
    .line 10
    iput v0, p1, Lorg/apache/commons/collections4/list/a$b;->d:I

    .line 11
    .line 12
    iget v0, p1, Lorg/apache/commons/collections4/list/a$b;->c:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iput v0, p1, Lorg/apache/commons/collections4/list/a$b;->c:I

    .line 17
    .line 18
    return-void
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

.method public hasNext()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$c;->nextIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$c;->f:Lorg/apache/commons/collections4/list/a$b;

    .line 6
    .line 7
    iget v1, v1, Lorg/apache/commons/collections4/list/a$b;->c:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

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

.method public hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/a$a;->previousIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
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
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a$a;->nextIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$c;->f:Lorg/apache/commons/collections4/list/a$b;

    .line 6
    .line 7
    iget v1, v1, Lorg/apache/commons/collections4/list/a$b;->b:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
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
    invoke-super {p0}, Lorg/apache/commons/collections4/list/a$a;->remove()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/collections4/list/a$c;->f:Lorg/apache/commons/collections4/list/a$b;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/collections4/list/a$a;->a:Lorg/apache/commons/collections4/list/a;

    .line 7
    .line 8
    iget v1, v1, Lorg/apache/commons/collections4/list/a;->modCount:I

    .line 9
    .line 10
    iput v1, v0, Lorg/apache/commons/collections4/list/a$b;->d:I

    .line 11
    .line 12
    iget v1, v0, Lorg/apache/commons/collections4/list/a$b;->c:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, v0, Lorg/apache/commons/collections4/list/a$b;->c:I

    .line 17
    .line 18
    return-void
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
