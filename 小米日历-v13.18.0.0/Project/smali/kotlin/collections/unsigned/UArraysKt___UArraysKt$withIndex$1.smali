.class final Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$1;
.super Lkotlin/jvm/internal/Lambda;
.source "_UArrays.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Ljava/util/Iterator<",
        "+",
        "Lkotlin/n;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "Lkotlin/n;",
        "invoke",
        "()Ljava/util/Iterator;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $this_withIndex:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$1;->$this_withIndex:[I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$1;->invoke()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/n;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$1;->$this_withIndex:[I

    invoke-static {v0}, Lkotlin/o;->c([I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
