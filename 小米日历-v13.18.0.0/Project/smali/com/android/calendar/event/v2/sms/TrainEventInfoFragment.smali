.class public final Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;
.super Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;
.source "TrainEventInfoFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$a;,
        Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$b;,
        Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment<",
        "Lcom/android/calendar/common/event/schema/TrainEvent;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u0000 q2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0003rstB\u0007\u00a2\u0006\u0004\u0008o\u0010pJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u0006H\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016J\u0012\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0017\u001a\u00020\u0006H\u0016J\u0008\u0010\u0018\u001a\u00020\u0006H\u0014J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001a\u001a\u00020\u0019H\u0014J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0002H\u0014J\u0008\u0010\u001e\u001a\u00020\u0006H\u0016J\u0008\u0010\u001f\u001a\u00020\u0006H\u0014J\u0008\u0010!\u001a\u00020 H\u0014J\u0008\u0010\"\u001a\u00020 H\u0014J\u0008\u0010$\u001a\u00020#H\u0014R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010\'R\u0016\u0010,\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008+\u0010\'R\u0016\u0010.\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008-\u0010\'R\u0016\u00100\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u0010\'R\u0016\u00102\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00081\u0010\'R\u0016\u00104\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00083\u0010\'R\u0016\u00106\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00085\u0010\'R\u0016\u00107\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\'R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008!\u00109R\u0016\u0010<\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008;\u0010\'R\u0016\u0010?\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010A\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008@\u0010>R\u0016\u0010C\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008B\u0010>R\u0016\u0010E\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008D\u0010>R\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010N\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\'R\u0016\u0010O\u001a\u00020F8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010HR\u0016\u0010R\u001a\u00020P8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008$\u0010QR\u0016\u0010T\u001a\u00020F8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008S\u0010HR\u0016\u0010V\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008U\u0010\'R\u0016\u0010X\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010WR\u0016\u0010[\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0018\u0010_\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u001e\u0010d\u001a\n\u0012\u0004\u0012\u00020a\u0018\u00010`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0016\u0010g\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u001a\u0010k\u001a\u00060hR\u00020\u00008\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0014\u0010n\u001a\u00020l8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010m\u00a8\u0006u"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;",
        "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/TrainEvent;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/Intent;",
        "intent",
        "Lkotlin/u;",
        "Z0",
        "c1",
        "U0",
        "T0",
        "d1",
        "Y0",
        "X0",
        "b1",
        "h0",
        "Landroid/view/View;",
        "rootView",
        "d0",
        "c0",
        "s0",
        "v",
        "onClick",
        "x",
        "r0",
        "",
        "eventId",
        "W0",
        "event",
        "a1",
        "onResume",
        "q0",
        "",
        "U",
        "T",
        "",
        "e0",
        "Landroid/widget/TextView;",
        "L",
        "Landroid/widget/TextView;",
        "mTrainNumAndSeat",
        "M",
        "mStartStation",
        "N",
        "mArrivalStation",
        "O",
        "mStartTime",
        "P",
        "mArrivalTime",
        "Q",
        "mOverDays",
        "R",
        "mStartDate",
        "S",
        "mTimeCost",
        "mArrivalDate",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "mSelectDstBtn",
        "V",
        "mSelectDstTv",
        "W",
        "Landroid/view/View;",
        "mLeftDots",
        "X",
        "mRightDots",
        "Y",
        "mStationHeader",
        "Z",
        "mReminderContainer",
        "Landroid/widget/LinearLayout;",
        "a0",
        "Landroid/widget/LinearLayout;",
        "mReminderRow",
        "Lmiuix/appcompat/widget/Spinner;",
        "b0",
        "Lmiuix/appcompat/widget/Spinner;",
        "mReminderSpinner",
        "mReminderRightText",
        "mAlarmRow",
        "Landroid/widget/CheckBox;",
        "Landroid/widget/CheckBox;",
        "mAlarmCheckBox",
        "f0",
        "eventServiceContainer",
        "g0",
        "mDisclaimerTv",
        "Lcom/android/calendar/common/event/schema/TrainEvent;",
        "mTrainEvent",
        "i0",
        "I",
        "mArriveStationIndex",
        "Lcom/android/calendar/event/t1;",
        "j0",
        "Lcom/android/calendar/event/t1;",
        "mQueryEventIDAsyncTask",
        "",
        "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
        "k0",
        "Ljava/util/List;",
        "mStationList",
        "m0",
        "J",
        "mSmsId",
        "Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;",
        "n0",
        "Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;",
        "mItemAdapter",
        "",
        "()Ljava/lang/String;",
        "deleteToast",
        "<init>",
        "()V",
        "p0",
        "a",
        "b",
        "c",
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
.field public static final p0:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$a;


# instance fields
.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/ImageView;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/view/View;

.field private Z:Landroid/view/View;

.field private a0:Landroid/widget/LinearLayout;

.field private b0:Lmiuix/appcompat/widget/Spinner;

.field private c0:Landroid/widget/TextView;

.field private d0:Landroid/widget/LinearLayout;

.field private e0:Landroid/widget/CheckBox;

.field private f0:Landroid/widget/LinearLayout;

.field private g0:Landroid/widget/TextView;

.field private h0:Lcom/android/calendar/common/event/schema/TrainEvent;

.field private i0:I

.field private j0:Lcom/android/calendar/event/t1;

.field private k0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
            ">;"
        }
    .end annotation
.end field

.field private l0:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private m0:J

.field private n0:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;

.field public o0:Ljava/util/Map;
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

    new-instance v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->p0:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->o0:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/TrainEvent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i0:I

    .line 20
    .line 21
    const-wide/16 v0, -0x1

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->m0:J

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

.method public static synthetic L0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->V0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final synthetic M0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;
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

.method public static final synthetic N0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i0:I

    .line 2
    .line 3
    return p0
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

.method public static final synthetic O0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)Lcom/android/calendar/common/event/schema/TrainEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 2
    .line 3
    return-object p0
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

.method public static final synthetic P0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Z0(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public static final synthetic Q0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

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

.method public static final synthetic R0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->c1()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public static final synthetic S0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->d1()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method private final T0()V
    .locals 5

    .line 1
    const-string v0, "travel_train_service_clicked"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    const-string v2, ""

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i0:I

    .line 26
    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ge v0, v3, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i0:I

    .line 46
    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationCode:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "arriveStation.stationCode"

    .line 56
    .line 57
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object v0, v2

    .line 62
    :goto_2
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 63
    .line 64
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;

    .line 72
    .line 73
    iget-object v3, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationName:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Lcom/miui/calendar/event/travel/a;->o(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    iget-object v2, v1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationCode:Ljava/lang/String;

    .line 88
    .line 89
    const-string v1, "departStation.stationCode"

    .line 90
    .line 91
    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move-object v0, v2

    .line 96
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v1, v3, v4, v2, v0}, Lcom/miui/calendar/event/travel/a;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
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

.method private final U0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "withAppendedId(CalendarC\u2026TENT_URI, mTrainEvent.id)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v2, "android.intent.action.EDIT"

    .line 33
    .line 34
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-class v2, Lcom/android/calendar/event/EditTrainEventActivity;

    .line 45
    .line 46
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 v0, 0x4

    .line 61
    const-string v2, "extra_key_edit_type"

    .line 62
    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string v0, "extra_from_out"

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    const-string v0, "beginTime"

    .line 83
    .line 84
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getEnd()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    const-string v0, "endTime"

    .line 98
    .line 99
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const-string v0, "allDay"

    .line 103
    .line 104
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    .line 112
    .line 113
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    return-void
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

.method private static final V0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getEventType()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1}, Lcom/android/calendar/settings/j;->p(Landroid/content/Context;I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance p2, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$d;

    .line 33
    .line 34
    invoke-direct {p2, p0, p1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$d;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/widget/CompoundButton;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->n0(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 51
    .line 52
    invoke-static {p1, p0}, Lcom/android/calendar/event/i;->h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
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

.method private final X0()V
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
    new-instance v4, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$loadReminderDataAsync$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$loadReminderDataAsync$1;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Lkotlin/coroutines/c;)V

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

.method private final Y0()V
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
    new-instance v4, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$loadTrainStationDataAsync$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$loadTrainStationDataAsync$1;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Lkotlin/coroutines/c;)V

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

.method private final Z0(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/miui/calendar/event/travel/a;->a(Landroid/content/Intent;)Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->u0()V

    .line 11
    .line 12
    .line 13
    return-void
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

.method private final b1()V
    .locals 8

    .line 1
    const-string v0, "Cal:D:TrainEventInfoFragment"

    .line 2
    .line 3
    const-string v1, "requestStationData()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/16 v6, 0xe

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-static/range {v2 .. v7}, Lu1/d;->c(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, ""

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    move-object v2, v3

    .line 38
    :cond_0
    const-string v4, "trainNo"

    .line 39
    .line 40
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v3, v2

    .line 53
    :goto_0
    const-string v2, "departDate"

    .line 54
    .line 55
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2, v1}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x1

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {v3, v2, v3}, Lu1/d;->f(Ljava/lang/String;ILjava/lang/Object;)Lu1/a;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v3, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$b;

    .line 73
    .line 74
    invoke-direct {v3, p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$b;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v0, v1}, Lu1/a;->g(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->l0:Ltc/a;

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lu1/b;

    .line 87
    .line 88
    invoke-direct {v1, v3}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1}, Ltc/a;->q(Ltc/b;)V

    .line 92
    .line 93
    .line 94
    return-void
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

.method private final c1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 2
    .line 3
    const-string v1, "mReminderSpinner"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->a0()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v0, v3, v5

    .line 28
    .line 29
    const-string v3, "mReminderContainer"

    .line 30
    .line 31
    const/16 v4, 0x8

    .line 32
    .line 33
    if-gez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Z:Landroid/view/View;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v2, v0

    .line 44
    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Z:Landroid/view/View;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object v0, v2

    .line 56
    :cond_3
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v5, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v0, v5}, Lcom/miui/calendar/event/travel/a;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const-string v5, "mReminderRow"

    .line 77
    .line 78
    const-string v6, "mAlarmRow"

    .line 79
    .line 80
    const-string v7, "mReminderRightText"

    .line 81
    .line 82
    if-eqz v0, :cond_9

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->c0:Landroid/widget/TextView;

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object v0, v2

    .line 92
    :cond_4
    const v8, 0x7f12068a

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 99
    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-object v0, v2

    .line 106
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->d0:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object v0, v2

    .line 117
    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->c0:Landroid/widget/TextView;

    .line 121
    .line 122
    if-nez v0, :cond_7

    .line 123
    .line 124
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v2

    .line 128
    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->a0:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v0, v2

    .line 139
    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->c0:Landroid/widget/TextView;

    .line 144
    .line 145
    if-nez v0, :cond_a

    .line 146
    .line 147
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    move-object v0, v2

    .line 151
    :cond_a
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 155
    .line 156
    if-nez v0, :cond_b

    .line 157
    .line 158
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v0, v2

    .line 162
    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->d0:Landroid/widget/LinearLayout;

    .line 166
    .line 167
    if-nez v0, :cond_c

    .line 168
    .line 169
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v0, v2

    .line 173
    :cond_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->a0:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    if-nez v0, :cond_d

    .line 179
    .line 180
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_d
    move-object v2, v0

    .line 185
    :goto_1
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    :goto_2
    return-void
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

.method private final d1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    const/4 v1, 0x0

    .line 16
    const-string v2, "mItemAdapter"

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iput v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i0:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->n0:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v1, v0

    .line 32
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->e(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v0, v4}, Lcom/miui/calendar/event/travel/a;->h(Ljava/util/List;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ltz v0, :cond_4

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v0, v4, :cond_4

    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-interface {v4, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 82
    .line 83
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v0, v3}, Lcom/miui/calendar/event/travel/a;->h(Ljava/util/List;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    :cond_5
    iput v3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i0:I

    .line 108
    .line 109
    if-gtz v3, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i0:I

    .line 121
    .line 122
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->n0:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;

    .line 123
    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    move-object v1, v0

    .line 131
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->k0:Ljava/util/List;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;->e(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    return-void
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


# virtual methods
.method protected T()I
    .locals 1

    const v0, 0x7f0d00ec

    return v0
.end method

.method protected U()I
    .locals 1

    const v0, 0x7f0d00ed

    return v0
.end method

.method protected V()Ljava/lang/String;
    .locals 2

    .line 1
    const v0, 0x7f120676

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getString(R.string.train\u2026vent_delete_successfully)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
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

.method protected W0(J)Lcom/android/calendar/common/event/schema/TrainEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Ls1/i;->b(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/TrainEvent;

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

.method protected a1(Lcom/android/calendar/common/event/schema/TrainEvent;)V
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->u0()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string p1, "1"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "0"

    .line 33
    .line 34
    :goto_0
    const-string v1, "status"

    .line 35
    .line 36
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string p1, "travel_train_detail_display"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    return-void
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

.method protected c0(Landroid/view/View;)V
    .locals 6

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
    const v1, 0x7f0a05b8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "rootView.findViewById(R.id.station_header)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Y:Landroid/view/View;

    .line 33
    .line 34
    new-instance v1, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->n0:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$c;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/DynamicLinearLayout;->setAdapter(Lcom/miui/calendar/view/i;)V

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0407

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    const v1, 0x7f0a04ce

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "rootView.findViewById<Vi\u2026(R.id.reminder_container)"

    .line 66
    .line 67
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Z:Landroid/view/View;

    .line 71
    .line 72
    const v1, 0x7f0a04d2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "rootView.findViewById<Li\u2026ayout>(R.id.reminder_row)"

    .line 80
    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    check-cast v1, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->a0:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    const v1, 0x7f0a0592

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "rootView.findViewById<mi\u2026et.Spinner>(R.id.spinner)"

    .line 96
    .line 97
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    check-cast v1, Lmiuix/appcompat/widget/Spinner;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 103
    .line 104
    const v1, 0x7f0a0500

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "rootView.findViewById<TextView>(R.id.right_text)"

    .line 112
    .line 113
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    check-cast v1, Landroid/widget/TextView;

    .line 117
    .line 118
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->c0:Landroid/widget/TextView;

    .line 119
    .line 120
    const v1, 0x7f0a008d

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v2, "rootView.findViewById<Li\u2026arLayout>(R.id.alarm_row)"

    .line 128
    .line 129
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast v1, Landroid/widget/LinearLayout;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->d0:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    if-nez v1, :cond_0

    .line 138
    .line 139
    const-string v1, "mAlarmRow"

    .line 140
    .line 141
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object v1, v2

    .line 145
    :cond_0
    const/16 v3, 0x8

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    const v1, 0x7f0a0345

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v3, "rootView.findViewById<CheckBox>(R.id.is_alarm)"

    .line 158
    .line 159
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    check-cast v1, Landroid/widget/CheckBox;

    .line 163
    .line 164
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->e0:Landroid/widget/CheckBox;

    .line 165
    .line 166
    const v1, 0x7f0a065b

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v3, "rootView.findViewById<Li\u2026t>(R.id.train_service_ll)"

    .line 174
    .line 175
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    check-cast v1, Landroid/widget/LinearLayout;

    .line 179
    .line 180
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->f0:Landroid/widget/LinearLayout;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 183
    .line 184
    .line 185
    const v0, 0x7f0a023d

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string v0, "rootView.findViewById<Te\u2026View>(R.id.disclaimer_tv)"

    .line 193
    .line 194
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    check-cast p1, Landroid/widget/TextView;

    .line 198
    .line 199
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->g0:Landroid/widget/TextView;

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->e0:Landroid/widget/CheckBox;

    .line 202
    .line 203
    if-nez p1, :cond_1

    .line 204
    .line 205
    const-string p1, "mAlarmCheckBox"

    .line 206
    .line 207
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    move-object p1, v2

    .line 211
    :cond_1
    new-instance v0, Lcom/android/calendar/event/v2/sms/r;

    .line 212
    .line 213
    invoke-direct {v0, p0}, Lcom/android/calendar/event/v2/sms/r;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    .line 218
    .line 219
    const p1, 0x7f1201d1

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    const-string v0, "getString(R.string.event_info_reminders_label)"

    .line 227
    .line 228
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const v3, 0x7f0d0152

    .line 238
    .line 239
    .line 240
    const v4, 0x1020014

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Y()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-direct {v0, v1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 248
    .line 249
    .line 250
    const v1, 0x7f0d0150

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 257
    .line 258
    const-string v3, "mReminderSpinner"

    .line 259
    .line 260
    if-nez v1, :cond_2

    .line 261
    .line 262
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    move-object v1, v2

    .line 266
    :cond_2
    invoke-virtual {v1, p1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 270
    .line 271
    if-nez p1, :cond_3

    .line 272
    .line 273
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    move-object p1, v2

    .line 277
    :cond_3
    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 281
    .line 282
    if-nez p1, :cond_4

    .line 283
    .line 284
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto :goto_0

    .line 288
    :cond_4
    move-object v2, p1

    .line 289
    :goto_0
    new-instance p1, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;

    .line 290
    .line 291
    invoke-direct {p1, p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 295
    .line 296
    .line 297
    const-string p1, "travel_train_service_display"

    .line 298
    .line 299
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-void
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method public d0(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a065a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "rootView.findViewById(R.id.train_num_seat)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->L:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f0a05ab

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "rootView.findViewById(R.id.start_station)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->M:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0a026c

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "rootView.findViewById(R.id.end_station)"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->N:Landroid/widget/TextView;

    .line 53
    .line 54
    const v0, 0x7f0a05ad

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "rootView.findViewById(R.id.start_time)"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->O:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f0a00c5

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "rootView.findViewById(R.id.arrive_time)"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->P:Landroid/widget/TextView;

    .line 85
    .line 86
    const v0, 0x7f0a0474

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "rootView.findViewById(R.id.over_days)"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Q:Landroid/widget/TextView;

    .line 101
    .line 102
    const v0, 0x7f0a05a6

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "rootView.findViewById(R.id.start_date)"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    check-cast v0, Landroid/widget/TextView;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->R:Landroid/widget/TextView;

    .line 117
    .line 118
    const v0, 0x7f0a0623

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "rootView.findViewById(R.id.time_cost)"

    .line 126
    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->S:Landroid/widget/TextView;

    .line 133
    .line 134
    const v0, 0x7f0a00c1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "rootView.findViewById(R.id.arrival_date)"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    check-cast v0, Landroid/widget/TextView;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->T:Landroid/widget/TextView;

    .line 149
    .line 150
    const v0, 0x7f0a0110

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "rootView.findViewById(R.id.btn_select_dest)"

    .line 158
    .line 159
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->U:Landroid/widget/ImageView;

    .line 165
    .line 166
    const v0, 0x7f0a0542

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "rootView.findViewById(R.id.select_dest)"

    .line 174
    .line 175
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->V:Landroid/widget/TextView;

    .line 181
    .line 182
    const v0, 0x7f0a0379

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v1, "rootView.findViewById(R.id.left_dots)"

    .line 190
    .line 191
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->W:Landroid/view/View;

    .line 195
    .line 196
    const v0, 0x7f0a04fd

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v0, "rootView.findViewById(R.id.right_dots)"

    .line 204
    .line 205
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->X:Landroid/view/View;

    .line 209
    .line 210
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->M:Landroid/widget/TextView;

    .line 211
    .line 212
    const/4 v0, 0x0

    .line 213
    if-nez p1, :cond_0

    .line 214
    .line 215
    const-string p1, "mStartStation"

    .line 216
    .line 217
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    move-object p1, v0

    .line 221
    :cond_0
    const/4 v1, 0x1

    .line 222
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->N:Landroid/widget/TextView;

    .line 226
    .line 227
    if-nez p1, :cond_1

    .line 228
    .line 229
    const-string p1, "mArrivalStation"

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    move-object p1, v0

    .line 235
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->U:Landroid/widget/ImageView;

    .line 239
    .line 240
    if-nez p1, :cond_2

    .line 241
    .line 242
    const-string p1, "mSelectDstBtn"

    .line 243
    .line 244
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    move-object p1, v0

    .line 248
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->V:Landroid/widget/TextView;

    .line 252
    .line 253
    if-nez p1, :cond_3

    .line 254
    .line 255
    const-string p1, "mSelectDstTv"

    .line 256
    .line 257
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_3
    move-object v0, p1

    .line 262
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    .line 264
    .line 265
    return-void
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method

.method protected e0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/miui/calendar/event/travel/a;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected h0(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->h0(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Cal:D:TrainEventInfoFragment"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p1, "parseIntent() no event id, return"

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string v2, "_id"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {p1, v2, v3}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v0, "parseIntent() event.eventId="

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    const-string v1, "sms_millis"

    .line 74
    .line 75
    const-wide/16 v2, -0x1

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    iput-wide v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->m0:J

    .line 82
    .line 83
    cmp-long v0, v0, v2

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    new-instance v0, Lcom/android/calendar/event/t1;

    .line 88
    .line 89
    iget-wide v1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->m0:J

    .line 90
    .line 91
    new-instance v3, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$f;

    .line 92
    .line 93
    invoke-direct {v3, p0, p1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$f;-><init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;Landroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/t1;-><init>(JLcom/android/calendar/event/t1$a;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->j0:Lcom/android/calendar/event/t1;

    .line 100
    .line 101
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    new-array v1, v1, [Ljava/lang/Void;

    .line 105
    .line 106
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void
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

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->o0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :goto_0
    const v1, 0x7f0a0407

    .line 15
    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v2, v1, :cond_2

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->T0()V

    .line 27
    .line 28
    .line 29
    goto :goto_7

    .line 30
    :cond_2
    :goto_1
    const v1, 0x7f0a04d2

    .line 31
    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ne v2, v1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b0:Lmiuix/appcompat/widget/Spinner;

    .line 43
    .line 44
    if-nez p1, :cond_4

    .line 45
    .line 46
    const-string p1, "mReminderSpinner"

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    move-object v0, p1

    .line 53
    :goto_2
    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 54
    .line 55
    .line 56
    goto :goto_7

    .line 57
    :cond_5
    :goto_3
    const v0, 0x7f0a0542

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    if-nez p1, :cond_6

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ne v2, v0, :cond_7

    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_7
    :goto_4
    const v0, 0x7f0a0110

    .line 72
    .line 73
    .line 74
    if-nez p1, :cond_8

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne p1, v0, :cond_9

    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_9
    :goto_5
    const/4 v1, 0x0

    .line 85
    :goto_6
    if-eqz v1, :cond_a

    .line 86
    .line 87
    const-string p1, "travel_train_set_arrive_station_top_clicked"

    .line 88
    .line 89
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->U0()V

    .line 93
    .line 94
    .line 95
    :cond_a
    :goto_7
    return-void
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

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/TrainEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->a1(Lcom/android/calendar/common/event/schema/TrainEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/calendar/common/event/schema/TrainEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->a1(Lcom/android/calendar/common/event/schema/TrainEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/TravelEvent;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/android/calendar/common/event/schema/TrainEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->a1(Lcom/android/calendar/common/event/schema/TrainEvent;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->v()V

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

.method protected q0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Y0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->X0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->b1()V

    .line 8
    .line 9
    .line 10
    return-void
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

.method protected r0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "mStationHeader"

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->q0()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Y:Landroid/view/View;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v4

    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Y:Landroid/view/View;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v0, v4

    .line 40
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-wide v5, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->m0:J

    .line 44
    .line 45
    const-wide/16 v7, -0x1

    .line 46
    .line 47
    cmp-long v0, v5, v7

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    move v1, v3

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->f0:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    const-string v0, "eventServiceContainer"

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v0, v4

    .line 62
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->g0:Landroid/widget/TextView;

    .line 66
    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    const-string v0, "mDisclaimerTv"

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v0, v4

    .line 75
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->e0:Landroid/widget/CheckBox;

    .line 79
    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    const-string v0, "mAlarmCheckBox"

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    move-object v4, v0

    .line 89
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 100
    .line 101
    .line 102
    return-void
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

.method public s0()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->R:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "mStartDate"

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/miui/calendar/event/travel/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->M:Landroid/widget/TextView;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const-string v1, "mStartStation"

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object v1, v2

    .line 45
    :cond_1
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v1, v3}, Lcom/miui/calendar/event/travel/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->O:Landroid/widget/TextView;

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    const-string v3, "mStartTime"

    .line 77
    .line 78
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v3, v2

    .line 82
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainEvent;->getPassengers()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const-string v4, "mTrainNumAndSeat"

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    if-lez v3, :cond_4

    .line 99
    .line 100
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainEvent;->getPassengers()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v6, "mTrainEvent.passengers[0]"

    .line 111
    .line 112
    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    check-cast v3, Lcom/android/calendar/common/event/schema/TrainPassenger;

    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainPassenger;->getCarriageNum()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainPassenger;->getSeatNum()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v6, v7, v8}, Lcom/miui/calendar/event/travel/a;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iget-object v7, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->L:Landroid/widget/TextView;

    .line 138
    .line 139
    if-nez v7, :cond_3

    .line 140
    .line 141
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move-object v7, v2

    .line 145
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v8, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 154
    .line 155
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainPassenger;->getSeatType()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v4, v8, v6, v3}, Lcom/miui/calendar/event/travel/a;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->L:Landroid/widget/TextView;

    .line 172
    .line 173
    if-nez v3, :cond_5

    .line 174
    .line 175
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move-object v3, v2

    .line 179
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iget-object v6, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 188
    .line 189
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v4, v6, v2, v2}, Lcom/miui/calendar/event/travel/a;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    :goto_0
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    const-string v4, "mSelectDstTv"

    .line 211
    .line 212
    const-string v6, "mSelectDstBtn"

    .line 213
    .line 214
    const-string v7, "mRightDots"

    .line 215
    .line 216
    const-string v8, "mLeftDots"

    .line 217
    .line 218
    const-string v9, "mArrivalTime"

    .line 219
    .line 220
    const-string v10, "mArrivalStation"

    .line 221
    .line 222
    const-string v11, "mOverDays"

    .line 223
    .line 224
    const-string v12, "mTimeCost"

    .line 225
    .line 226
    const/16 v13, 0x8

    .line 227
    .line 228
    if-nez v3, :cond_1d

    .line 229
    .line 230
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->N:Landroid/widget/TextView;

    .line 231
    .line 232
    if-nez v3, :cond_6

    .line 233
    .line 234
    invoke-static {v10}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    move-object v3, v2

    .line 238
    :cond_6
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->N:Landroid/widget/TextView;

    .line 242
    .line 243
    if-nez v3, :cond_7

    .line 244
    .line 245
    invoke-static {v10}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    move-object v3, v2

    .line 249
    :cond_7
    iget-object v10, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 250
    .line 251
    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->T:Landroid/widget/TextView;

    .line 259
    .line 260
    if-nez v3, :cond_8

    .line 261
    .line 262
    const-string v3, "mArrivalDate"

    .line 263
    .line 264
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    move-object v3, v2

    .line 268
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    iget-object v14, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 277
    .line 278
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrDate()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v14

    .line 282
    invoke-static {v10, v14}, Lcom/miui/calendar/event/travel/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->P:Landroid/widget/TextView;

    .line 290
    .line 291
    if-nez v3, :cond_9

    .line 292
    .line 293
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    move-object v3, v2

    .line 297
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    iget-object v14, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 306
    .line 307
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    invoke-static {v10, v14}, Lcom/miui/calendar/event/travel/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->P:Landroid/widget/TextView;

    .line 319
    .line 320
    if-nez v3, :cond_a

    .line 321
    .line 322
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    move-object v3, v2

    .line 326
    :cond_a
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->U:Landroid/widget/ImageView;

    .line 330
    .line 331
    if-nez v3, :cond_b

    .line 332
    .line 333
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    move-object v3, v2

    .line 337
    :cond_b
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->V:Landroid/widget/TextView;

    .line 341
    .line 342
    if-nez v3, :cond_c

    .line 343
    .line 344
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    move-object v3, v2

    .line 348
    :cond_c
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 357
    .line 358
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const/16 v4, 0x20

    .line 366
    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    iget-object v6, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 383
    .line 384
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrDate()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->h0:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 395
    .line 396
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-static {v1, v3}, Lcom/miui/calendar/event/travel/a;->l(Ljava/lang/String;Ljava/lang/String;)[J

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    aget-wide v3, v1, v5

    .line 412
    .line 413
    const-wide/16 v9, 0x0

    .line 414
    .line 415
    cmp-long v3, v3, v9

    .line 416
    .line 417
    const/4 v4, 0x1

    .line 418
    if-lez v3, :cond_f

    .line 419
    .line 420
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Q:Landroid/widget/TextView;

    .line 421
    .line 422
    if-nez v3, :cond_d

    .line 423
    .line 424
    invoke-static {v11}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    move-object v3, v2

    .line 428
    :cond_d
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Q:Landroid/widget/TextView;

    .line 432
    .line 433
    if-nez v3, :cond_e

    .line 434
    .line 435
    invoke-static {v11}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    move-object v3, v2

    .line 439
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    const v11, 0x7f120691

    .line 444
    .line 445
    .line 446
    new-array v14, v4, [Ljava/lang/Object;

    .line 447
    .line 448
    aget-wide v15, v1, v5

    .line 449
    .line 450
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 451
    .line 452
    .line 453
    move-result-object v15

    .line 454
    aput-object v15, v14, v5

    .line 455
    .line 456
    invoke-virtual {v6, v11, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .line 462
    .line 463
    goto :goto_1

    .line 464
    :cond_f
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Q:Landroid/widget/TextView;

    .line 465
    .line 466
    if-nez v3, :cond_10

    .line 467
    .line 468
    invoke-static {v11}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    move-object v3, v2

    .line 472
    :cond_10
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    :goto_1
    aget-wide v14, v1, v4

    .line 476
    .line 477
    const/4 v3, 0x2

    .line 478
    aget-wide v5, v1, v3

    .line 479
    .line 480
    cmp-long v1, v14, v9

    .line 481
    .line 482
    const v11, 0x7f100056

    .line 483
    .line 484
    .line 485
    const v2, 0x7f100055

    .line 486
    .line 487
    .line 488
    if-lez v1, :cond_12

    .line 489
    .line 490
    cmp-long v17, v5, v9

    .line 491
    .line 492
    if-lez v17, :cond_12

    .line 493
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    long-to-int v9, v14

    .line 503
    new-array v10, v4, [Ljava/lang/Object;

    .line 504
    .line 505
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 506
    .line 507
    .line 508
    move-result-object v14

    .line 509
    const/4 v15, 0x0

    .line 510
    aput-object v14, v10, v15

    .line 511
    .line 512
    invoke-virtual {v1, v2, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    const-string v2, "mActivity.resources.getQ\u2026rs, hours.toInt(), hours)"

    .line 517
    .line 518
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    long-to-int v9, v5

    .line 530
    new-array v10, v4, [Ljava/lang/Object;

    .line 531
    .line 532
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    aput-object v5, v10, v15

    .line 537
    .line 538
    invoke-virtual {v2, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    const-string v5, "mActivity.resources.getQ\u2026mins, mins.toInt(), mins)"

    .line 543
    .line 544
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget-object v5, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->S:Landroid/widget/TextView;

    .line 548
    .line 549
    if-nez v5, :cond_11

    .line 550
    .line 551
    invoke-static {v12}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const/4 v5, 0x0

    .line 555
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    const v9, 0x7f120695

    .line 560
    .line 561
    .line 562
    new-array v3, v3, [Ljava/lang/Object;

    .line 563
    .line 564
    const/4 v10, 0x0

    .line 565
    aput-object v1, v3, v10

    .line 566
    .line 567
    aput-object v2, v3, v4

    .line 568
    .line 569
    invoke-virtual {v6, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    .line 575
    .line 576
    goto :goto_2

    .line 577
    :cond_12
    if-lez v1, :cond_14

    .line 578
    .line 579
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->S:Landroid/widget/TextView;

    .line 580
    .line 581
    if-nez v1, :cond_13

    .line 582
    .line 583
    invoke-static {v12}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    const/4 v1, 0x0

    .line 587
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    long-to-int v5, v14

    .line 596
    new-array v6, v4, [Ljava/lang/Object;

    .line 597
    .line 598
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 599
    .line 600
    .line 601
    move-result-object v9

    .line 602
    const/4 v10, 0x0

    .line 603
    aput-object v9, v6, v10

    .line 604
    .line 605
    invoke-virtual {v3, v2, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    .line 611
    .line 612
    goto :goto_2

    .line 613
    :cond_14
    cmp-long v1, v5, v9

    .line 614
    .line 615
    if-lez v1, :cond_16

    .line 616
    .line 617
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->S:Landroid/widget/TextView;

    .line 618
    .line 619
    if-nez v1, :cond_15

    .line 620
    .line 621
    invoke-static {v12}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    const/4 v1, 0x0

    .line 625
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    long-to-int v3, v5

    .line 634
    new-array v9, v4, [Ljava/lang/Object;

    .line 635
    .line 636
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    const/4 v6, 0x0

    .line 641
    aput-object v5, v9, v6

    .line 642
    .line 643
    invoke-virtual {v2, v11, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    .line 649
    .line 650
    goto :goto_2

    .line 651
    :cond_16
    const/4 v4, 0x0

    .line 652
    :goto_2
    if-eqz v4, :cond_1a

    .line 653
    .line 654
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->S:Landroid/widget/TextView;

    .line 655
    .line 656
    if-nez v1, :cond_17

    .line 657
    .line 658
    invoke-static {v12}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    const/4 v1, 0x0

    .line 662
    :cond_17
    const/4 v2, 0x0

    .line 663
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->W:Landroid/view/View;

    .line 667
    .line 668
    if-nez v1, :cond_18

    .line 669
    .line 670
    invoke-static {v8}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    const/4 v1, 0x0

    .line 674
    :cond_18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    .line 676
    .line 677
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->X:Landroid/view/View;

    .line 678
    .line 679
    if-nez v1, :cond_19

    .line 680
    .line 681
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    const/4 v1, 0x0

    .line 685
    :cond_19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_5

    .line 689
    .line 690
    :cond_1a
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->W:Landroid/view/View;

    .line 691
    .line 692
    if-nez v1, :cond_1b

    .line 693
    .line 694
    invoke-static {v8}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    const/4 v1, 0x0

    .line 698
    :cond_1b
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 699
    .line 700
    .line 701
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->X:Landroid/view/View;

    .line 702
    .line 703
    if-nez v1, :cond_1c

    .line 704
    .line 705
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const/4 v2, 0x0

    .line 709
    goto :goto_3

    .line 710
    :cond_1c
    move-object v2, v1

    .line 711
    :goto_3
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 712
    .line 713
    .line 714
    goto :goto_5

    .line 715
    :cond_1d
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->N:Landroid/widget/TextView;

    .line 716
    .line 717
    if-nez v1, :cond_1e

    .line 718
    .line 719
    invoke-static {v10}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    const/4 v1, 0x0

    .line 723
    :cond_1e
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .line 725
    .line 726
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->P:Landroid/widget/TextView;

    .line 727
    .line 728
    if-nez v1, :cond_1f

    .line 729
    .line 730
    invoke-static {v9}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    const/4 v1, 0x0

    .line 734
    :cond_1f
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 735
    .line 736
    .line 737
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->U:Landroid/widget/ImageView;

    .line 738
    .line 739
    if-nez v1, :cond_20

    .line 740
    .line 741
    invoke-static {v6}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    const/4 v1, 0x0

    .line 745
    :cond_20
    const/4 v2, 0x0

    .line 746
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    .line 748
    .line 749
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->V:Landroid/widget/TextView;

    .line 750
    .line 751
    if-nez v1, :cond_21

    .line 752
    .line 753
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const/4 v1, 0x0

    .line 757
    :cond_21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 758
    .line 759
    .line 760
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->W:Landroid/view/View;

    .line 761
    .line 762
    if-nez v1, :cond_22

    .line 763
    .line 764
    invoke-static {v8}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    const/4 v1, 0x0

    .line 768
    :cond_22
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 769
    .line 770
    .line 771
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->X:Landroid/view/View;

    .line 772
    .line 773
    if-nez v1, :cond_23

    .line 774
    .line 775
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    const/4 v1, 0x0

    .line 779
    :cond_23
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 780
    .line 781
    .line 782
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->S:Landroid/widget/TextView;

    .line 783
    .line 784
    if-nez v1, :cond_24

    .line 785
    .line 786
    invoke-static {v12}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    const/4 v1, 0x0

    .line 790
    :cond_24
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 791
    .line 792
    .line 793
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->Q:Landroid/widget/TextView;

    .line 794
    .line 795
    if-nez v1, :cond_25

    .line 796
    .line 797
    invoke-static {v11}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    const/4 v2, 0x0

    .line 801
    goto :goto_4

    .line 802
    :cond_25
    move-object v2, v1

    .line 803
    :goto_4
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 804
    .line 805
    .line 806
    :goto_5
    return-void
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method public bridge synthetic u(J)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->W0(J)Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public x()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->x()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->U0()V

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
