.class Lorg/apache/commons/collections4/bag/a$a;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bag/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/bag/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bag/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/a$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/apache/commons/collections4/bag/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bag/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bag/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/collections4/bag/a$a;->a:Lorg/apache/commons/collections4/bag/a;

    .line 5
    .line 6
    invoke-static {p1}, Lorg/apache/commons/collections4/bag/a;->access$000(Lorg/apache/commons/collections4/bag/a;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->b:Ljava/util/Iterator;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->c:Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-static {p1}, Lorg/apache/commons/collections4/bag/a;->access$100(Lorg/apache/commons/collections4/bag/a;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lorg/apache/commons/collections4/bag/a$a;->e:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lorg/apache/commons/collections4/bag/a$a;->f:Z

    .line 31
    .line 32
    return-void
    .line 33
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/bag/a$a;->d:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->b:Ljava/util/Iterator;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->a:Lorg/apache/commons/collections4/bag/a;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/collections4/bag/a;->access$100(Lorg/apache/commons/collections4/bag/a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/apache/commons/collections4/bag/a$a;->e:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lorg/apache/commons/collections4/bag/a$a;->d:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->b:Ljava/util/Iterator;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->c:Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/apache/commons/collections4/bag/a$b;

    .line 30
    .line 31
    iget v0, v0, Lorg/apache/commons/collections4/bag/a$b;->a:I

    .line 32
    .line 33
    iput v0, p0, Lorg/apache/commons/collections4/bag/a$a;->d:I

    .line 34
    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bag/a$a;->f:Z

    .line 37
    .line 38
    iget v1, p0, Lorg/apache/commons/collections4/bag/a$a;->d:I

    .line 39
    .line 40
    sub-int/2addr v1, v0

    .line 41
    iput v1, p0, Lorg/apache/commons/collections4/bag/a$a;->d:I

    .line 42
    .line 43
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->c:Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw v0
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

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->a:Lorg/apache/commons/collections4/bag/a;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/collections4/bag/a;->access$100(Lorg/apache/commons/collections4/bag/a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/apache/commons/collections4/bag/a$a;->e:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/apache/commons/collections4/bag/a$a;->f:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->c:Ljava/util/Map$Entry;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/commons/collections4/bag/a$b;

    .line 22
    .line 23
    iget v1, v0, Lorg/apache/commons/collections4/bag/a$b;->a:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-le v1, v2, :cond_0

    .line 27
    .line 28
    sub-int/2addr v1, v2

    .line 29
    iput v1, v0, Lorg/apache/commons/collections4/bag/a$b;->a:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->b:Ljava/util/Iterator;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bag/a$a;->a:Lorg/apache/commons/collections4/bag/a;

    .line 38
    .line 39
    invoke-static {v0}, Lorg/apache/commons/collections4/bag/a;->access$210(Lorg/apache/commons/collections4/bag/a;)I

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/apache/commons/collections4/bag/a$a;->f:Z

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw v0
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
