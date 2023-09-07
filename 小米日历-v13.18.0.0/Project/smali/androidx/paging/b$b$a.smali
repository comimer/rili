.class Landroidx/paging/b$b$a;
.super Landroidx/paging/b$b;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/b$b;->mapByPage(Lk/a;)Landroidx/paging/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/b$b<",
        "TKey;TToValue;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk/a;

.field final synthetic b:Landroidx/paging/b$b;


# direct methods
.method constructor <init>(Landroidx/paging/b$b;Lk/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/paging/b$b$a;->b:Landroidx/paging/b$b;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/paging/b$b$a;->a:Lk/a;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/paging/b$b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
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
.end method


# virtual methods
.method public create()Landroidx/paging/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/b<",
            "TKey;TToValue;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/b$b$a;->b:Landroidx/paging/b$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/paging/b$b;->create()Landroidx/paging/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/paging/b$b$a;->a:Lk/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/paging/b;->mapByPage(Lk/a;)Landroidx/paging/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
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
