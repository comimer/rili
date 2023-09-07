.class final Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CalDavLoginActivity.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Landroidx/lifecycle/v<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/lifecycle/v;",
        "",
        "invoke",
        "()Landroidx/lifecycle/v;",
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
.field final synthetic this$0:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;->this$0:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;->invoke$lambda-0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->g0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)Lx1/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "mViewBinding"

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :cond_0
    iget-object p1, p1, Lx1/a;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->f0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)Ln4/a;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ln4/a;->isValid()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    return-void
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
.method public final invoke()Landroidx/lifecycle/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;->this$0:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;

    new-instance v1, Lcom/miui/calendar/sync/protocol/g;

    invoke-direct {v1, v0}, Lcom/miui/calendar/sync/protocol/g;-><init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;->invoke()Landroidx/lifecycle/v;

    move-result-object v0

    return-object v0
.end method
