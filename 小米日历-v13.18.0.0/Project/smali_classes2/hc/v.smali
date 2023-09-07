.class public interface abstract Lhc/v;
.super Ljava/lang/Object;
.source "OrderedMap.java"

# interfaces
.implements Lhc/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhc/k<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract firstKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract lastKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract mapIterator()Lhc/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhc/w<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation
.end method

.method public abstract previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation
.end method
