.class final Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OnUndeliveredElement.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->a(Lw7/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lw7/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Ljava/lang/Throwable;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "E",
        "",
        "<anonymous parameter 0>",
        "Lkotlin/u;",
        "invoke",
        "(Ljava/lang/Throwable;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $context:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic $this_bindCancellationFun:Lw7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/l<",
            "TE;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw7/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l<",
            "-TE;",
            "Lkotlin/u;",
            ">;TE;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$this_bindCancellationFun:Lw7/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$element:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$context:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$this_bindCancellationFun:Lw7/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$element:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->b(Lw7/l;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method
