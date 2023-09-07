.class Lorg/apache/commons/collections4/multimap/b$c;
.super Ljava/util/AbstractCollection;
.source "AbstractMultiValuedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/multimap/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/commons/collections4/multimap/b;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/multimap/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/collections4/multimap/b$c;->a:Lorg/apache/commons/collections4/multimap/b;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/multimap/b;Lorg/apache/commons/collections4/multimap/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/multimap/b$c;-><init>(Lorg/apache/commons/collections4/multimap/b;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
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
    new-instance v0, Lorg/apache/commons/collections4/multimap/b$c$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/multimap/b$c$a;-><init>(Lorg/apache/commons/collections4/multimap/b$c;)V

    .line 4
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

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/collections4/multimap/b$c;->a:Lorg/apache/commons/collections4/multimap/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/collections4/multimap/b;->size()I

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
