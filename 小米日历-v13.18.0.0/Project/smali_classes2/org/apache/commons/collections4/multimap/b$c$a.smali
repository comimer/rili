.class Lorg/apache/commons/collections4/multimap/b$c$a;
.super Lic/m;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/multimap/b$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lic/m<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TK;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lorg/apache/commons/collections4/multimap/b$c;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/multimap/b$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/b$c$a;->g:Lorg/apache/commons/collections4/multimap/b$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lic/m;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object p1, p1, Lorg/apache/commons/collections4/multimap/b$c;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/apache/commons/collections4/multimap/b;->getMap()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/apache/commons/collections4/multimap/b$c$a;->e:Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/b$c$a;->f:Ljava/util/Iterator;

    .line 28
    .line 29
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method protected b(I)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/apache/commons/collections4/multimap/b$c$a;->f:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections4/multimap/b$c$a;->f:Ljava/util/Iterator;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lorg/apache/commons/collections4/multimap/b$c$a$a;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/multimap/b$c$a$a;-><init>(Lorg/apache/commons/collections4/multimap/b$c$a;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lic/p;

    .line 23
    .line 24
    new-instance v2, Lorg/apache/commons/collections4/multimap/b$h;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/apache/commons/collections4/multimap/b$c$a;->g:Lorg/apache/commons/collections4/multimap/b$c;

    .line 27
    .line 28
    iget-object v3, v3, Lorg/apache/commons/collections4/multimap/b$c;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 29
    .line 30
    invoke-direct {v2, v3, p1}, Lorg/apache/commons/collections4/multimap/b$h;-><init>(Lorg/apache/commons/collections4/multimap/b;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Lic/p;-><init>(Ljava/util/Iterator;Lhc/d0;)V

    .line 34
    .line 35
    .line 36
    return-object v1
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
.end method
