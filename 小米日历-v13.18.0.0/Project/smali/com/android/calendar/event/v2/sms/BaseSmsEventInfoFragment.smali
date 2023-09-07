.class public abstract Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;
.super Lcom/android/calendar/event/v2/BaseEventInfoFragment;
.source "BaseSmsEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$a;,
        Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/calendar/common/event/schema/SmsEvent;",
        ">",
        "Lcom/android/calendar/event/v2/BaseEventInfoFragment<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008&\u0018\u0000 j*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0002klB\u0007\u00a2\u0006\u0004\u0008h\u0010iJ \u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0012\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014J\u0010\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0017H&J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0017H\u0014J\u0008\u0010\u001f\u001a\u00020\nH\u0014J\u0008\u0010 \u001a\u00020\nH&J\u0008\u0010!\u001a\u00020\nH\u0014J\u0008\u0010\"\u001a\u00020\u0008H$J\u0008\u0010\u0002\u001a\u00020\u0008H\u0014J\u0017\u0010$\u001a\u00020\n2\u0006\u0010#\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\'\u001a\u00020&H$J\u0016\u0010*\u001a\u00020\n2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\r0(H\u0016J\u0008\u0010+\u001a\u00020\nH\u0014J\u0010\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020,H\u0014J\u001e\u00101\u001a\u00020\n2\u0014\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\n\u0018\u00010/H\u0016J\u0008\u00102\u001a\u00020\nH\u0014R$\u00109\u001a\u0004\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\"\u0010A\u001a\u00020:8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u0016\u0010D\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\"\u0010S\u001a\u00020\u00088\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR(\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000c8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR(\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u00081\u0010U\u001a\u0004\u0008[\u0010W\"\u0004\u0008\\\u0010YR$\u0010_\u001a\u0004\u0018\u00010^8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u0014\u0010g\u001a\u00020\u000f8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010f\u00a8\u0006m"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/SmsEvent;",
        "T",
        "Lcom/android/calendar/event/v2/BaseEventInfoFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "",
        "layoutId",
        "Lkotlin/u;",
        "b0",
        "",
        "Lw3/b;",
        "S",
        "",
        "R",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/View;",
        "onCreateView",
        "Landroid/content/Intent;",
        "intent",
        "h0",
        "rootView",
        "d0",
        "c0",
        "u0",
        "s0",
        "t0",
        "U",
        "event",
        "onEventLoad",
        "(Lcom/android/calendar/common/event/schema/SmsEvent;)V",
        "",
        "e0",
        "",
        "items",
        "O",
        "r0",
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;",
        "listener",
        "n0",
        "Lkotlin/Function1;",
        "deleteCallback",
        "w",
        "q0",
        "l",
        "Landroid/view/ViewGroup;",
        "getMView",
        "()Landroid/view/ViewGroup;",
        "setMView",
        "(Landroid/view/ViewGroup;)V",
        "mView",
        "Lcom/miui/calendar/view/DynamicLinearLayout;",
        "m",
        "Lcom/miui/calendar/view/DynamicLinearLayout;",
        "X",
        "()Lcom/miui/calendar/view/DynamicLinearLayout;",
        "j0",
        "(Lcom/miui/calendar/view/DynamicLinearLayout;)V",
        "mInfoContainer",
        "n",
        "Landroid/view/View;",
        "mSmsTextContainer",
        "Landroid/widget/TextView;",
        "o",
        "Landroid/widget/TextView;",
        "mSmsTextView",
        "Lmiuix/appcompat/app/l;",
        "p",
        "Lmiuix/appcompat/app/l;",
        "mAlarmChangedDialog",
        "r",
        "I",
        "a0",
        "()I",
        "m0",
        "(I)V",
        "mSpinnerSelectionIndex",
        "v",
        "Ljava/util/List;",
        "Z",
        "()Ljava/util/List;",
        "l0",
        "(Ljava/util/List;)V",
        "mReminderValues",
        "Y",
        "k0",
        "mReminderLabels",
        "Lw3/c;",
        "mAdapter",
        "Lw3/c;",
        "W",
        "()Lw3/c;",
        "i0",
        "(Lw3/c;)V",
        "V",
        "()Ljava/lang/String;",
        "deleteToast",
        "<init>",
        "()V",
        "y",
        "a",
        "b",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final y:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$a;


# instance fields
.field private l:Landroid/view/ViewGroup;

.field protected m:Lcom/miui/calendar/view/DynamicLinearLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Lmiuix/appcompat/app/l;

.field private q:Lw3/c;

.field private r:I

.field protected v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->y:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->x:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
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

.method public static synthetic G()V
    .locals 0

    invoke-static {}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->P()V

    return-void
.end method

.method public static synthetic H(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->f0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->p0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic J(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Q(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic K(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->o0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic L(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lw7/l;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->g0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lw7/l;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic M(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/common/event/schema/SmsEvent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 6
    .line 7
    return-object p0
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

.method public static final synthetic N(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
    .line 6
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

.method private static final P()V
    .locals 0

    return-void
.end method

.method private static final Q(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v0, v1}, Lcom/android/calendar/settings/j;->p(Landroid/content/Context;I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-instance p2, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;

    .line 41
    .line 42
    invoke-direct {p2, p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/widget/CompoundButton;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->n0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Lcom/android/calendar/event/i;->h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method private final R()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f1204fc

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x7f1204fb

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v1, 0x7f1204fa

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const v1, 0x7f1204f9

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const v1, 0x7f1204f7

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v1, 0x7f1204fe

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_0

    .line 92
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const v1, 0x7f1204f8

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const v1, 0x7f1204f6

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method private final S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw3/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->O(Ljava/util/List;)V

    .line 7
    .line 8
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
.end method

.method private final b0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method private static final f0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->k()V

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

.method private static final g0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lw7/l;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    check-cast p3, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {p2, v0, v1}, Lx3/b;->a(Landroid/content/Context;J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->V()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x4

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {p2, p3, v0, v1, v2}, Lcom/miui/calendar/util/t0;->e(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/miui/calendar/util/s;->e(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x2

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p1, p0}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method private static final o0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p1, "$listener"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;->b()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;->a()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method private static final p0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    const-string p1, "$listener"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;->onCancel()V

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
.method public O(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw3/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lw3/d;

    .line 7
    .line 8
    invoke-direct {v0}, Lw3/d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->e0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v3, 0x7f1204f4

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean v2, v0, Lw3/d;->h:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v3, 0x7f120689

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 46
    .line 47
    iput-boolean v2, v0, Lw3/b;->e:Z

    .line 48
    .line 49
    new-instance v1, Lcom/android/calendar/event/v2/sms/b;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/b;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lw3/b;->g:Ljava/lang/Runnable;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    iput-boolean v1, v0, Lw3/d;->h:Z

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const v2, 0x7f1201d1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, v0, Lw3/d;->i:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const v3, 0x7f0d0152

    .line 79
    .line 80
    .line 81
    const v4, 0x1020014

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Y()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 89
    .line 90
    .line 91
    const v2, 0x7f0d0150

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 95
    .line 96
    .line 97
    iput-object v1, v0, Lw3/d;->j:Landroid/widget/SpinnerAdapter;

    .line 98
    .line 99
    iget v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->r:I

    .line 100
    .line 101
    iput v1, v0, Lw3/d;->k:I

    .line 102
    .line 103
    new-instance v1, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$c;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$c;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, Lw3/d;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 109
    .line 110
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v0, Lw3/a;

    .line 114
    .line 115
    invoke-direct {v0}, Lw3/a;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const v2, 0x7f1204a3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iput-boolean v1, v0, Lw3/a;->h:Z

    .line 142
    .line 143
    new-instance v1, Lcom/android/calendar/event/v2/sms/c;

    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/sms/c;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, v0, Lw3/a;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 149
    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    return-void
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method protected T()I
    .locals 1

    const v0, 0x7f0d021f

    return v0
.end method

.method protected abstract U()I
.end method

.method protected abstract V()Ljava/lang/String;
.end method

.method protected final W()Lw3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->q:Lw3/c;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method protected final X()Lcom/miui/calendar/view/DynamicLinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->m:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mInfoContainer"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
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

.method protected final Y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->w:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mReminderLabels"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
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

.method protected final Z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->v:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mReminderValues"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
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

.method protected final a0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->r:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
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

.method protected c0(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0339

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type com.miui.calendar.view.DynamicLinearLayout"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->j0(Lcom/miui/calendar/view/DynamicLinearLayout;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lw3/c;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lw3/c;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->q:Lw3/c;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->X()Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->q:Lw3/c;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/DynamicLinearLayout;->setAdapter(Lcom/miui/calendar/view/i;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0a0568

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->o:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f0a0569

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "rootView.findViewById(R.id.sms_content_container)"

    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->n:Landroid/view/View;

    .line 72
    .line 73
    return-void
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public abstract d0(Landroid/view/View;)V
.end method

.method protected abstract e0()Z
.end method

.method protected h0(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected final i0(Lw3/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->q:Lw3/c;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
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

.method protected final j0(Lcom/miui/calendar/view/DynamicLinearLayout;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->m:Lcom/miui/calendar/view/DynamicLinearLayout;

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
.end method

.method protected final k0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->w:Ljava/util/List;

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
.end method

.method protected final l0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->v:Ljava/util/List;

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
.end method

.method protected final m0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->r:I

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
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

.method protected n0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;)V
    .locals 3

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f1204fd

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->R()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->p:Lmiuix/appcompat/app/l;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->p:Lmiuix/appcompat/app/l;

    .line 42
    .line 43
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/l$b;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const v2, 0x7f12019f

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lcom/android/calendar/event/v2/sms/d;

    .line 60
    .line 61
    invoke-direct {v2, p1}, Lcom/android/calendar/event/v2/sms/d;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/l$b;->l([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->p:Lmiuix/appcompat/app/l;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    new-instance v1, Lcom/android/calendar/event/v2/sms/e;

    .line 77
    .line 78
    invoke-direct {v1, p1}, Lcom/android/calendar/event/v2/sms/e;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "context.resources"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f030056

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->z0(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->l0(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->A0(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->k0(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    return-void
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "mActivity.intent"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->h0(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->q()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    check-cast p3, Landroid/view/ViewGroup;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->l:Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    const p3, 0x7f0d00b0

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/view/ViewGroup;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->l:Landroid/view/ViewGroup;

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->l:Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const p3, 0x7f0a01c1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const-string v0, "it.findViewById<FrameLay\u2026.custom_header_container)"

    .line 40
    .line 41
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p3, Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->U()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-direct {p0, p1, p3, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->b0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    .line 51
    .line 52
    .line 53
    const p3, 0x7f0a01a8

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    const-string v0, "it.findViewById<LinearLa\u2026>(R.id.content_container)"

    .line 61
    .line 62
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    check-cast p3, Landroid/view/ViewGroup;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->T()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-direct {p0, p1, p3, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->b0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->d0(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->c0(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->l:Landroid/view/ViewGroup;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    new-instance p2, Lcom/android/calendar/event/v2/sms/a;

    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/android/calendar/event/v2/sms/a;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->l:Landroid/view/ViewGroup;

    .line 93
    .line 94
    return-object p1
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/SmsEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V

    return-void
.end method

.method protected onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->u0()V

    .line 3
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->t0()V

    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->q0()V

    return-void
.end method

.method protected q0()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lkotlin/coroutines/c;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected r0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->S()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->q:Lw3/c;

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lw3/c;->f(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->X()Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$e;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$e;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/miui/calendar/view/DynamicLinearLayout;->setOnItemClickListener(Lcom/miui/calendar/view/DynamicLinearLayout$b;)V

    .line 23
    .line 24
    .line 25
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public abstract s0()V
.end method

.method protected t0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/SmsEvent;->getBody()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "mSmsTextContainer"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->n:Landroid/view/View;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v3, v0

    .line 29
    :goto_0
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->n:Landroid/view/View;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v1, v3

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->o:Landroid/widget/TextView;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    const-string v1, "mSmsTextView"

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move-object v3, v1

    .line 58
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method protected u0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->s0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->r0()V

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
.end method

.method public w(Lw7/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->w(Lw7/l;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/miui/calendar/card/schema/SimpleDialogSchema;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f120169

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->title:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x104000a

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonText:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Lcom/android/calendar/event/v2/sms/f;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/v2/sms/f;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lw7/l;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/high16 v1, 0x1040000

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, v0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->negativeButtonText:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->show(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method
