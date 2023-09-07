.class public Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;
.super Lorg/apache/commons/collections4/multimap/c;
.source "HashSetValuedHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/multimap/c<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_MAP_CAPACITY:I = 0x10

.field private static final DEFAULT_INITIAL_SET_CAPACITY:I = 0x3

.field private static final serialVersionUID:J = 0x1337b4eL


# instance fields
.field private final initialSetCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/multimap/c;-><init>(Ljava/util/Map;)V

    .line 4
    iput p2, p0, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->initialSetCapacity:I

    return-void
.end method

.method public constructor <init>(Lhc/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/s<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Lhc/s;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    .line 6
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multimap/b;->putAll(Lhc/s;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;-><init>(II)V

    .line 8
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/multimap/b;->putAll(Ljava/util/Map;)Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/multimap/b;->setMap(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/b;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 13
    .line 14
    .line 15
    return-void
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

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/multimap/b;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 5
    .line 6
    .line 7
    return-void
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


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->createCollection()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->initialSetCapacity:I

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/multimap/HashSetValuedHashMap;->createCollection()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
