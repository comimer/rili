.class final Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountManagerFragment.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/selectcalendars/AccountManagerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "com/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2$a",
        "invoke",
        "()Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2$a;",
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
.field final synthetic this$0:Lcom/android/calendar/selectcalendars/AccountManagerFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2$a;
    .locals 3

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2$a;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerFragment;

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2$a;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerFragment;Landroid/os/Handler;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2;->invoke()Lcom/android/calendar/selectcalendars/AccountManagerFragment$mCalendarObserver$2$a;

    move-result-object v0

    return-object v0
.end method
