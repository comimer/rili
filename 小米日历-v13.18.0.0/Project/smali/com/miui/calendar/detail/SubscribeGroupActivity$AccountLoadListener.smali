.class final Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener;
.super Ljava/lang/Object;
.source "SubscribeGroupActivity.kt"

# interfaces
.implements Lk3/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/detail/SubscribeGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountLoadListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R(\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener;",
        "Lk3/d$b;",
        "Lcom/miui/calendar/account/mi/MiAccountSchema;",
        "accountSchema",
        "Lkotlin/u;",
        "a",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/miui/calendar/detail/SubscribeGroupActivity;",
        "Ljava/lang/ref/WeakReference;",
        "getMSubscribeGroupActivityRef",
        "()Ljava/lang/ref/WeakReference;",
        "setMSubscribeGroupActivityRef",
        "(Ljava/lang/ref/WeakReference;)V",
        "mSubscribeGroupActivityRef",
        "subscribeGroupActivity",
        "<init>",
        "(Lcom/miui/calendar/detail/SubscribeGroupActivity;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/calendar/detail/SubscribeGroupActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/calendar/detail/SubscribeGroupActivity;)V
    .locals 1

    .line 1
    const-string v0, "subscribeGroupActivity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    new-instance v5, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v5, p1, v0, v1}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;-><init>(Lcom/miui/calendar/account/mi/MiAccountSchema;Lcom/miui/calendar/detail/SubscribeGroupActivity;Lkotlin/coroutines/c;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity;->h0(Lcom/miui/calendar/detail/SubscribeGroupActivity;Lkotlinx/coroutines/s1;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
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
.end method
