.class public Lorg/apache/commons/collections4/map/MultiKeyMap;
.super Lorg/apache/commons/collections4/map/d;
.source "MultiKeyMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/d<",
        "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
        "+TK;>;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/a;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/map/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/d;-><init>(Ljava/util/Map;)V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/collections4/map/d;->map:Ljava/util/Map;

    return-void
.end method

.method public static multiKeyMap(Lorg/apache/commons/collections4/map/a;)Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/a<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;)",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/collections4/map/MultiKeyMap;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/a;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Map must be empty"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string v0, "Map must not be null"

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
    .line 31
    .line 32
    .line 33
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
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
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/commons/collections4/map/d;->map:Ljava/util/Map;

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
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
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
    iget-object v0, p0, Lorg/apache/commons/collections4/map/d;->map:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
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
.method protected checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    const-string v0, "Key must not be null"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
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

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->clone()Lorg/apache/commons/collections4/map/MultiKeyMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/MultiKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/MultiKeyMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 7
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 11
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 13
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 15
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/map/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/a<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lorg/apache/commons/collections4/map/d;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/a;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 13
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 16
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 18
    iget v2, v1, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v2, v0, :cond_0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    if-eqz p4, :cond_3

    .line 9
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_3
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_1
    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    if-eqz p4, :cond_3

    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_3
    if-eqz p5, :cond_4

    .line 14
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p1

    xor-int/2addr v0, p1

    :cond_4
    shl-int/lit8 p1, v0, 0x9

    not-int p1, p1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0xe

    xor-int/2addr p1, v0

    shl-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xa

    xor-int/2addr p1, p2

    return p1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a$c<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p3, p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a$c<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p3, p2, :cond_1

    if-eqz p3, :cond_2

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    if-eq p4, p3, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a$c<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p3, p2, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    if-eq p4, p3, :cond_2

    if-eqz p4, :cond_3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    if-eq p5, p3, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a$c<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/a$c;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {p1, v2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p3, p2, :cond_1

    if-eqz p3, :cond_4

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    if-eq p4, p3, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    if-eq p5, p3, :cond_3

    if-eqz p5, :cond_4

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p3

    if-eq p6, p3, :cond_5

    if-eqz p6, :cond_4

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    return v1
.end method

.method public mapIterator()Lhc/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/p<",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/a;->mapIterator()Lhc/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TV;)TV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 5
    iget v3, v2, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object p2

    invoke-virtual {p2, v2, p3}, Lorg/apache/commons/collections4/map/a;->updateEntry(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p3}, Lorg/apache/commons/collections4/map/a;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v1

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 13
    iget v3, v2, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object p2

    invoke-virtual {p2, v2, p4}, Lorg/apache/commons/collections4/map/a;->updateEntry(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;)V

    return-object p1

    .line 16
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p4}, Lorg/apache/commons/collections4/map/a;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v1

    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 21
    iget v3, v2, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v3, v0, :cond_0

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object p2

    invoke-virtual {p2, v2, p5}, Lorg/apache/commons/collections4/map/a;->updateEntry(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;)V

    return-object p1

    .line 24
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v0, v3, p5}, Lorg/apache/commons/collections4/map/a;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 26
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v2

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v3, v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 29
    iget v4, v3, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v4, v1, :cond_0

    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v3}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/apache/commons/collections4/map/a;->updateEntry(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;)V

    return-object v1

    .line 32
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    new-instance v10, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    move-object v4, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v1, v10, v0}, Lorg/apache/commons/collections4/map/a;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Lorg/apache/commons/collections4/keyvalue/MultiKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;TV;)TV;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    .line 35
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lorg/apache/commons/collections4/keyvalue/MultiKey<",
            "+TK;>;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/keyvalue/MultiKey;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/d;->putAll(Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    return-void
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lhc/p;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Lhc/p;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-interface {v0}, Lhc/p;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 4
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    :goto_1
    invoke-interface {v0}, Lhc/p;->remove()V

    move v2, v5

    goto :goto_0

    :cond_2
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lhc/p;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Lhc/p;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v0}, Lhc/p;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 9
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    :goto_2
    invoke-interface {v0}, Lhc/p;->remove()V

    move v2, v6

    goto :goto_0

    :cond_3
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 11
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lhc/p;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Lhc/p;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-interface {v0}, Lhc/p;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 14
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p3, :cond_3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    :goto_3
    invoke-interface {v0}, Lhc/p;->remove()V

    move v2, v6

    goto :goto_0

    :cond_4
    return v2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lhc/p;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Lhc/p;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-interface {v0}, Lhc/p;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 19
    invoke-virtual {v3}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->size()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p3, :cond_3

    if-nez v4, :cond_0

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_3
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p4, :cond_4

    if-nez v3, :cond_0

    goto :goto_4

    :cond_4
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    :goto_4
    invoke-interface {v0}, Lhc/p;->remove()V

    move v2, v6

    goto :goto_0

    :cond_5
    return v2
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    iget v5, v2, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object p2

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections4/map/a;->removeMapping(Lorg/apache/commons/collections4/map/a$c;ILorg/apache/commons/collections4/map/a$c;)V

    return-object p1

    .line 7
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 11
    iget v5, v2, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object p2

    invoke-virtual {p2, v2, v1, v4}, Lorg/apache/commons/collections4/map/a;->removeMapping(Lorg/apache/commons/collections4/map/a$c;ILorg/apache/commons/collections4/map/a$c;)V

    return-object p1

    .line 14
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v1

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v10, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 18
    iget v4, v2, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object p2

    invoke-virtual {p2, v2, v1, v10}, Lorg/apache/commons/collections4/map/a;->removeMapping(Lorg/apache/commons/collections4/map/a$c;ILorg/apache/commons/collections4/map/a$c;)V

    return-object p1

    .line 21
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    move-object v10, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 22
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/collections4/map/a;->hashIndex(II)I

    move-result v1

    .line 24
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/a;->data:[Lorg/apache/commons/collections4/map/a$c;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v11, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 25
    iget v4, v2, Lorg/apache/commons/collections4/map/a$c;->b:I

    if-ne v4, v0, :cond_0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/a$c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/a$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/a;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v11}, Lorg/apache/commons/collections4/map/a;->removeMapping(Lorg/apache/commons/collections4/map/a$c;ILorg/apache/commons/collections4/map/a$c;)V

    return-object v0

    .line 28
    :cond_0
    iget-object v4, v2, Lorg/apache/commons/collections4/map/a$c;->a:Lorg/apache/commons/collections4/map/a$c;

    move-object v11, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v3
.end method
