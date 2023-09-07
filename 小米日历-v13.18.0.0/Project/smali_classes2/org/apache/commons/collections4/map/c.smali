.class public abstract Lorg/apache/commons/collections4/map/c;
.super Lorg/apache/commons/collections4/map/a;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lhc/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/c$d;,
        Lorg/apache/commons/collections4/map/c$c;,
        Lorg/apache/commons/collections4/map/c$f;,
        Lorg/apache/commons/collections4/map/c$b;,
        Lorg/apache/commons/collections4/map/c$a;,
        Lorg/apache/commons/collections4/map/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/a<",
        "TK;TV;>;",
        "Lhc/v<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient header:Lorg/apache/commons/collections4/map/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/a;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/a;-><init>(IF)V

    return-void
.end method

.method protected constructor <init>(IFI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/a;-><init>(IFI)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/a;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections4/map/a$c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a$c<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/collections4/map/c$c;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 4
    .line 5
    iput-object v0, p1, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 8
    .line 9
    iput-object v1, p1, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 10
    .line 11
    iget-object v1, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 12
    .line 13
    iput-object p1, v1, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 14
    .line 15
    iput-object p1, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    .line 18
    .line 19
    aput-object p1, v0, p2

    .line 20
    .line 21
    return-void
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

.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/collections4/map/a;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 5
    .line 6
    iput-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 7
    .line 8
    iput-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

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
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 5
    .line 6
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 9
    .line 10
    if-eq p1, v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 20
    .line 21
    :cond_2
    iget-object v1, v1, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 24
    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections4/map/a;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_3
    const/4 p1, 0x0

    .line 39
    return p1
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
.end method

.method protected bridge synthetic createEntry(Lorg/apache/commons/collections4/map/a$c;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/a$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/c;->createEntry(Lorg/apache/commons/collections4/map/a$c;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/c$c;

    move-result-object p1

    return-object p1
.end method

.method protected createEntry(Lorg/apache/commons/collections4/map/a$c;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a$c<",
            "TK;TV;>;ITK;TV;)",
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/collections4/map/c$c;

    invoke-virtual {p0, p3}, Lorg/apache/commons/collections4/map/a;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/c$c;-><init>(Lorg/apache/commons/collections4/map/a$c;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lic/i;->b()Lhc/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/c$a;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/c$a;-><init>(Lorg/apache/commons/collections4/map/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0
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

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lic/i;->b()Lhc/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/c$b;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/c$b;-><init>(Lorg/apache/commons/collections4/map/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0
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

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lic/i;->b()Lhc/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/c$f;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/c$f;-><init>(Lorg/apache/commons/collections4/map/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0
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

.method protected entryAfter(Lorg/apache/commons/collections4/map/c$c;)Lorg/apache/commons/collections4/map/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 2
    .line 3
    return-object p1
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method protected entryBefore(Lorg/apache/commons/collections4/map/c$c;)Lorg/apache/commons/collections4/map/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 2
    .line 3
    return-object p1
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/map/a;->size:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 15
    .line 16
    const-string v1, "Map is empty"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method protected bridge synthetic getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/a$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/c;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/c$c;

    move-result-object p1

    return-object p1
.end method

.method protected getEntry(I)Lorg/apache/commons/collections4/map/c$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "Index "

    if-ltz p1, :cond_3

    .line 3
    iget v1, p0, Lorg/apache/commons/collections4/map/a;->size:I

    if-ge p1, v1, :cond_2

    .line 4
    div-int/lit8 v0, v1, 0x2

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 6
    iget-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    :goto_1
    if-le v1, p1, :cond_1

    .line 8
    iget-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-object v0

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/collections4/map/a;->size:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/c$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/map/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/a;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/a$c;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/map/c$c;

    return-object p1
.end method

.method protected init()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v0, v1, v0, v0}, Lorg/apache/commons/collections4/map/c;->createEntry(Lorg/apache/commons/collections4/map/a$c;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/c$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 8
    .line 9
    iput-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 10
    .line 11
    iput-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 12
    .line 13
    return-void
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

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/map/a;->size:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 15
    .line 16
    const-string v1, "Map is empty"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public bridge synthetic mapIterator()Lhc/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/c;->mapIterator()Lhc/w;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lhc/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/apache/commons/collections4/map/a;->size:I

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lic/j;->b()Lhc/w;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/c$e;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/c$e;-><init>(Lorg/apache/commons/collections4/map/c;)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/c;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/c$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    :goto_1
    return-object p1
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

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/c;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/c$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/collections4/map/c;->header:Lorg/apache/commons/collections4/map/c$c;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    :goto_1
    return-object p1
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

.method protected removeEntry(Lorg/apache/commons/collections4/map/a$c;ILorg/apache/commons/collections4/map/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a$c<",
            "TK;TV;>;I",
            "Lorg/apache/commons/collections4/map/a$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lorg/apache/commons/collections4/map/c$c;

    .line 3
    .line 4
    iget-object v1, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 5
    .line 6
    iget-object v2, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 7
    .line 8
    iput-object v2, v1, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 11
    .line 12
    iput-object v1, v2, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lorg/apache/commons/collections4/map/c$c;->f:Lorg/apache/commons/collections4/map/c$c;

    .line 16
    .line 17
    iput-object v1, v0, Lorg/apache/commons/collections4/map/c$c;->e:Lorg/apache/commons/collections4/map/c$c;

    .line 18
    .line 19
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/a;->removeEntry(Lorg/apache/commons/collections4/map/a$c;ILorg/apache/commons/collections4/map/a$c;)V

    .line 20
    .line 21
    .line 22
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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method
