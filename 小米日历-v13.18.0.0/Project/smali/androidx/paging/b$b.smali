.class public abstract Landroidx/paging/b$b;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract create()Landroidx/paging/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/b<",
            "TKey;TValue;>;"
        }
    .end annotation
.end method

.method public map(Lk/a;)Landroidx/paging/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ToValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a<",
            "TValue;TToValue;>;)",
            "Landroidx/paging/b$b<",
            "TKey;TToValue;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/paging/b;->createListFunction(Lk/a;)Lk/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/paging/b$b;->mapByPage(Lk/a;)Landroidx/paging/b$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
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
.end method

.method public mapByPage(Lk/a;)Landroidx/paging/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ToValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a<",
            "Ljava/util/List<",
            "TValue;>;",
            "Ljava/util/List<",
            "TToValue;>;>;)",
            "Landroidx/paging/b$b<",
            "TKey;TToValue;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/paging/b$b$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/paging/b$b$a;-><init>(Landroidx/paging/b$b;Lk/a;)V

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
.end method
