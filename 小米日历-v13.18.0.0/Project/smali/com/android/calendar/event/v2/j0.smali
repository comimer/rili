.class public final Lcom/android/calendar/event/v2/j0;
.super Lcom/android/calendar/event/v2/BaseEventInfoFragment;
.source "AnniversaryEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/v2/j0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/v2/BaseEventInfoFragment<",
        "Lcom/android/calendar/common/event/schema/AnniversaryEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u0000 V2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001WB\u0007\u00a2\u0006\u0004\u0008T\u0010UJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u0019\u0010\u000b\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0014J&\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0003H\u0016J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\tH\u0016J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0002H\u0014J\u001e\u0010!\u001a\u00020\u00032\u0014\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001eH\u0016J\u0008\u0010\"\u001a\u00020\u0003H\u0016R\u001e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010(R\u0018\u00101\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00103\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00100R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u00109\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00100R\u0018\u0010:\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u00100R\u0018\u0010;\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u00100R\u0018\u0010<\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u00100R\u0018\u0010>\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u00106R\u0018\u0010@\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u00100R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010FR\u0016\u0010L\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010N\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010KR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010KR\u0014\u0010S\u001a\u00020\t8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010R\u00a8\u0006X"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/j0;",
        "Lcom/android/calendar/event/v2/BaseEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/AnniversaryEvent;",
        "Lkotlin/u;",
        "V",
        "Landroid/widget/TextView;",
        "textView",
        "Y",
        "R",
        "",
        "isNeedAlarm",
        "Q",
        "(Ljava/lang/Boolean;)V",
        "a0",
        "",
        "eventId",
        "X",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "onResume",
        "isVisible",
        "y",
        "event",
        "f0",
        "Lkotlin/Function1;",
        "",
        "deleteCallback",
        "w",
        "x",
        "",
        "l",
        "Ljava/util/List;",
        "lineArr",
        "m",
        "Landroid/view/View;",
        "mRootView",
        "n",
        "Lcom/android/calendar/common/event/schema/AnniversaryEvent;",
        "mAnniversaryEvent",
        "o",
        "mCardView",
        "p",
        "Landroid/widget/TextView;",
        "mYearText",
        "q",
        "mDayText",
        "Landroid/widget/ImageView;",
        "r",
        "Landroid/widget/ImageView;",
        "mIntervalImg",
        "v",
        "mMonthText",
        "mWeekText",
        "mDayCountText",
        "mEventTitle",
        "z",
        "mAlarmIcon",
        "D",
        "mAlarmStatus",
        "Landroid/widget/LinearLayout;",
        "E",
        "Landroid/widget/LinearLayout;",
        "mAlarmContainer",
        "F",
        "Landroid/view/ViewGroup;",
        "mImageContainer",
        "G",
        "mContentContainer",
        "H",
        "Z",
        "isCurrentVisible",
        "I",
        "hasShowAnimation",
        "J",
        "mIsEventLoaded",
        "s",
        "()Z",
        "needRefreshOnResume",
        "<init>",
        "()V",
        "L",
        "a",
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
.field public static final L:Lcom/android/calendar/event/v2/j0$a;


# instance fields
.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/view/ViewGroup;

.field private G:Landroid/view/ViewGroup;

.field private H:Z

.field private I:Z

.field private J:Z

.field public K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/view/View;

.field private n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/event/v2/j0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/v2/j0$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/v2/j0;->L:Lcom/android/calendar/event/v2/j0$a;

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
    iput-object v0, p0, Lcom/android/calendar/event/v2/j0;->K:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/v2/j0;->l:Ljava/util/List;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic G(Lcom/android/calendar/event/v2/j0;Lw7/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->e0(Lcom/android/calendar/event/v2/j0;Lw7/l;)V

    return-void
.end method

.method public static synthetic H(Lcom/android/calendar/event/v2/j0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/j0;->g0(Lcom/android/calendar/event/v2/j0;)V

    return-void
.end method

.method public static synthetic I(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->Z(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic J(Lcom/android/calendar/event/v2/j0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->c0(Lcom/android/calendar/event/v2/j0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcom/android/calendar/event/v2/j0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->d0(Lcom/android/calendar/event/v2/j0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic L(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->S(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V

    return-void
.end method

.method public static synthetic M(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->T(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V

    return-void
.end method

.method public static synthetic N(Lcom/android/calendar/event/v2/j0;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/j0;->U(Lcom/android/calendar/event/v2/j0;)V

    return-void
.end method

.method public static synthetic O(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->b0(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic P(Lcom/android/calendar/event/v2/j0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/j0;->W(Lcom/android/calendar/event/v2/j0;Landroid/view/View;)V

    return-void
.end method

.method private final Q(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->z:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const v1, 0x7f08023a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->D:Landroid/widget/TextView;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const v2, 0x7f12006a

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v1, v0

    .line 47
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->E:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const v0, 0x7f080174

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_5
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->z:Landroid/widget/ImageView;

    .line 79
    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    const v1, 0x7f080238

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->D:Landroid/widget/TextView;

    .line 89
    .line 90
    if-nez p1, :cond_7

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    const v2, 0x7f120069

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_2

    .line 113
    :cond_8
    move-object v1, v0

    .line 114
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->E:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    if-nez p1, :cond_9

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_a

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_a

    .line 133
    .line 134
    const v0, 0x7f080172

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    :goto_4
    return-void
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

.method private final R()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const v2, 0x7f0a031f

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const v1, 0x7f0a01d3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    :cond_1
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v2, Lcom/android/calendar/event/v2/z;

    .line 41
    .line 42
    invoke-direct {v2, v0, p0}, Lcom/android/calendar/event/v2/z;-><init>(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    if-nez v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->x:Landroid/widget/TextView;

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :goto_2
    iput-boolean v3, p0, Lcom/android/calendar/event/v2/j0;->I:Z

    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    if-eqz v0, :cond_6

    .line 66
    .line 67
    new-instance v2, Lcom/android/calendar/event/v2/a0;

    .line 68
    .line 69
    invoke-direct {v2, v0, p0}, Lcom/android/calendar/event/v2/a0;-><init>(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_6
    if-nez v1, :cond_7

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_7
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    :goto_3
    new-array v0, v3, [Landroid/view/View;

    .line 82
    .line 83
    aput-object v1, v0, v4

    .line 84
    .line 85
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lmiuix/animation/e;->d()V

    .line 94
    .line 95
    .line 96
    new-array v0, v3, [Landroid/view/View;

    .line 97
    .line 98
    aput-object v1, v0, v4

    .line 99
    .line 100
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "start"

    .line 109
    .line 110
    invoke-interface {v0, v1}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v2, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 115
    .line 116
    invoke-interface {v0, v2, v4}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v5, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 121
    .line 122
    const v6, 0x3faccccd    # 1.35f

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v5, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v7, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 130
    .line 131
    invoke-interface {v0, v7, v6}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v6, "end"

    .line 136
    .line 137
    invoke-interface {v0, v6}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0, v2, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0, v5, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {v0, v7, v3}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {v0, v1}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const/4 v1, 0x2

    .line 158
    new-array v1, v1, [Ld9/a;

    .line 159
    .line 160
    new-instance v5, Ld9/a;

    .line 161
    .line 162
    invoke-direct {v5}, Ld9/a;-><init>()V

    .line 163
    .line 164
    .line 165
    const-wide/16 v7, 0xc8

    .line 166
    .line 167
    invoke-virtual {v5, v7, v8}, Ld9/a;->j(J)Ld9/a;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const/4 v7, 0x6

    .line 172
    new-array v8, v3, [F

    .line 173
    .line 174
    const v9, 0x44bb8000    # 1500.0f

    .line 175
    .line 176
    .line 177
    aput v9, v8, v4

    .line 178
    .line 179
    invoke-virtual {v5, v7, v8}, Ld9/a;->k(I[F)Ld9/a;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    aput-object v5, v1, v4

    .line 184
    .line 185
    new-instance v5, Ld9/a;

    .line 186
    .line 187
    invoke-direct {v5}, Ld9/a;-><init>()V

    .line 188
    .line 189
    .line 190
    const-wide/16 v7, 0x0

    .line 191
    .line 192
    new-array v9, v4, [F

    .line 193
    .line 194
    invoke-virtual {v5, v2, v7, v8, v9}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const/4 v5, 0x3

    .line 199
    new-array v7, v3, [F

    .line 200
    .line 201
    const/high16 v8, 0x43fa0000    # 500.0f

    .line 202
    .line 203
    aput v8, v7, v4

    .line 204
    .line 205
    invoke-virtual {v2, v5, v7}, Ld9/a;->k(I[F)Ld9/a;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    aput-object v2, v1, v3

    .line 210
    .line 211
    invoke-interface {v0, v6, v1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->x:Landroid/widget/TextView;

    .line 215
    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    new-instance v1, Lcom/android/calendar/event/v2/b0;

    .line 219
    .line 220
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/b0;-><init>(Lcom/android/calendar/event/v2/j0;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 224
    .line 225
    .line 226
    :cond_8
    iput-boolean v3, p0, Lcom/android/calendar/event/v2/j0;->I:Z

    .line 227
    .line 228
    return-void
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method private static final S(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    const-string v5, "itemView"

    .line 27
    .line 28
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 43
    :goto_1
    if-eqz v5, :cond_1

    .line 44
    .line 45
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move v5, v1

    .line 49
    :goto_2
    int-to-float v5, v5

    .line 50
    add-float/2addr v4, v5

    .line 51
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 62
    .line 63
    .line 64
    iget-object v4, p1, Lcom/android/calendar/event/v2/j0;->l:Ljava/util/List;

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object p0, p1, Lcom/android/calendar/event/v2/j0;->y:Landroid/widget/TextView;

    .line 75
    .line 76
    if-nez p0, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :goto_3
    return-void
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

.method private static final T(Landroid/widget/RelativeLayout;Lcom/android/calendar/event/v2/j0;)V
    .locals 13

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-ge v2, v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    int-to-float v5, v5

    .line 27
    const-string v6, "itemView"

    .line 28
    .line 29
    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    move-object v3, v6

    .line 41
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    .line 43
    :cond_0
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v3, v1

    .line 49
    :goto_1
    int-to-float v3, v3

    .line 50
    add-float/2addr v5, v3

    .line 51
    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotY(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 62
    .line 63
    .line 64
    iget-object v3, p1, Lcom/android/calendar/event/v2/j0;->l:Ljava/util/List;

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object p0, p1, Lcom/android/calendar/event/v2/j0;->l:Ljava/util/List;

    .line 75
    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    invoke-static {p0}, Lkotlin/collections/t;->k(Ljava/util/Collection;)Lb8/c;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lb8/a;->c()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-virtual {v3}, Lb8/a;->h()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-gt p0, v0, :cond_5

    .line 94
    .line 95
    :goto_2
    iget-object v2, p1, Lcom/android/calendar/event/v2/j0;->l:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroid/view/View;

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    new-array v4, v3, [Landroid/view/View;

    .line 108
    .line 109
    aput-object v2, v4, v1

    .line 110
    .line 111
    invoke-static {v4}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {v4}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v4}, Lmiuix/animation/e;->d()V

    .line 120
    .line 121
    .line 122
    new-array v4, v3, [Landroid/view/View;

    .line 123
    .line 124
    aput-object v2, v4, v1

    .line 125
    .line 126
    invoke-static {v4}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v4, "start"

    .line 135
    .line 136
    invoke-interface {v2, v4}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    sget-object v5, Lmiuix/animation/property/h;->f:Lmiuix/animation/property/h;

    .line 141
    .line 142
    const/16 v6, 0x23

    .line 143
    .line 144
    invoke-interface {v2, v5, v6}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    sget-object v6, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 149
    .line 150
    invoke-interface {v2, v6, v1}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v7, "end"

    .line 155
    .line 156
    invoke-interface {v2, v7}, Lmiuix/animation/f;->q(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2, v5, v1}, Lmiuix/animation/f;->i(Lmiuix/animation/property/b;I)Lmiuix/animation/f;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const/high16 v8, 0x3f000000    # 0.5f

    .line 165
    .line 166
    invoke-interface {v2, v6, v8}, Lmiuix/animation/f;->m(Lmiuix/animation/property/b;F)Lmiuix/animation/f;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {v2, v4}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const/4 v4, 0x3

    .line 175
    new-array v8, v4, [Ld9/a;

    .line 176
    .line 177
    new-instance v9, Ld9/a;

    .line 178
    .line 179
    invoke-direct {v9}, Ld9/a;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v10, p1, Lcom/android/calendar/event/v2/j0;->l:Ljava/util/List;

    .line 183
    .line 184
    invoke-static {v10}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    sub-int/2addr v10, p0

    .line 192
    mul-int/lit8 v10, v10, 0x1e

    .line 193
    .line 194
    add-int/lit8 v10, v10, 0x64

    .line 195
    .line 196
    int-to-long v10, v10

    .line 197
    invoke-virtual {v9, v10, v11}, Ld9/a;->j(J)Ld9/a;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    aput-object v9, v8, v1

    .line 202
    .line 203
    new-instance v9, Ld9/a;

    .line 204
    .line 205
    invoke-direct {v9}, Ld9/a;-><init>()V

    .line 206
    .line 207
    .line 208
    new-array v10, v1, [F

    .line 209
    .line 210
    const-wide/16 v11, 0x0

    .line 211
    .line 212
    invoke-virtual {v9, v5, v11, v12, v10}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    new-array v9, v3, [F

    .line 217
    .line 218
    const v10, 0x44bb8000    # 1500.0f

    .line 219
    .line 220
    .line 221
    aput v10, v9, v1

    .line 222
    .line 223
    invoke-virtual {v5, v4, v9}, Ld9/a;->k(I[F)Ld9/a;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    aput-object v5, v8, v3

    .line 228
    .line 229
    const/4 v5, 0x2

    .line 230
    new-instance v9, Ld9/a;

    .line 231
    .line 232
    invoke-direct {v9}, Ld9/a;-><init>()V

    .line 233
    .line 234
    .line 235
    new-array v10, v1, [F

    .line 236
    .line 237
    invoke-virtual {v9, v6, v11, v12, v10}, Ld9/a;->o(Lmiuix/animation/property/b;J[F)Ld9/a;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    new-array v3, v3, [F

    .line 242
    .line 243
    const/high16 v9, 0x43fa0000    # 500.0f

    .line 244
    .line 245
    aput v9, v3, v1

    .line 246
    .line 247
    invoke-virtual {v6, v4, v3}, Ld9/a;->k(I[F)Ld9/a;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    aput-object v3, v8, v5

    .line 252
    .line 253
    invoke-interface {v2, v7, v8}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 254
    .line 255
    .line 256
    if-eq p0, v0, :cond_5

    .line 257
    .line 258
    add-int/lit8 p0, p0, 0x1

    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_5
    iget-object p0, p1, Lcom/android/calendar/event/v2/j0;->y:Landroid/widget/TextView;

    .line 263
    .line 264
    if-nez p0, :cond_6

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    :goto_3
    iget-object p0, p1, Lcom/android/calendar/event/v2/j0;->y:Landroid/widget/TextView;

    .line 271
    .line 272
    invoke-direct {p1, p0}, Lcom/android/calendar/event/v2/j0;->Y(Landroid/widget/TextView;)V

    .line 273
    .line 274
    .line 275
    return-void
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
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method private static final U(Lcom/android/calendar/event/v2/j0;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->x:Landroid/widget/TextView;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->x:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/android/calendar/event/v2/j0;->a0(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method private final V()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->y:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 13
    .line 14
    const-string v3, "mAnniversaryEvent"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v2, v4

    .line 23
    :cond_1
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getContent()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v5, 0x64

    .line 28
    .line 29
    invoke-static {v1, v2, v5}, Lcom/miui/calendar/util/x0;->H0(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x7f06012e

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move-object v1, v4

    .line 51
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getDesiredDay()Ljava/util/Calendar;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move-object v2, v4

    .line 63
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v1, v4

    .line 75
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getDesiredDay()Ljava/util/Calendar;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move-object v2, v4

    .line 87
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calDays(Ljava/util/Calendar;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const v5, 0x7f07075d

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const v2, 0x7f0703a2

    .line 103
    .line 104
    .line 105
    const-string v5, "requireContext()"

    .line 106
    .line 107
    if-lez v10, :cond_6

    .line 108
    .line 109
    iget-object v6, v0, Lcom/android/calendar/event/v2/j0;->x:Landroid/widget/TextView;

    .line 110
    .line 111
    if-eqz v6, :cond_7

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const v7, 0x7f100015

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    int-to-float v9, v2

    .line 132
    const/4 v11, 0x3

    .line 133
    move-object v5, v1

    .line 134
    invoke-static/range {v5 .. v12}, Lcom/miui/calendar/util/x0;->E0(Landroid/content/Context;Landroid/widget/TextView;IIFIII)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    iget-object v6, v0, Lcom/android/calendar/event/v2/j0;->x:Landroid/widget/TextView;

    .line 139
    .line 140
    if-eqz v6, :cond_7

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-static {v7, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const v9, 0x7f100012

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    int-to-float v2, v2

    .line 161
    const/4 v11, 0x3

    .line 162
    move-object v5, v7

    .line 163
    move v7, v9

    .line 164
    move v9, v2

    .line 165
    move v10, v1

    .line 166
    invoke-static/range {v5 .. v12}, Lcom/miui/calendar/util/x0;->E0(Landroid/content/Context;Landroid/widget/TextView;IIFIII)V

    .line 167
    .line 168
    .line 169
    :cond_7
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget-object v2, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 174
    .line 175
    if-nez v2, :cond_8

    .line 176
    .line 177
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object v2, v4

    .line 181
    :cond_8
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v5

    .line 185
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 186
    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    const/4 v6, 0x2

    .line 194
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    add-int/2addr v7, v2

    .line 199
    const/4 v8, 0x5

    .line 200
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    iget-object v9, v0, Lcom/android/calendar/event/v2/j0;->p:Landroid/widget/TextView;

    .line 205
    .line 206
    if-nez v9, :cond_9

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_9
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    :goto_3
    new-instance v12, Ljava/util/Formatter;

    .line 217
    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const/16 v10, 0x32

    .line 221
    .line 222
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-direct {v12, v9, v10}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    iget-object v9, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 237
    .line 238
    if-nez v9, :cond_a

    .line 239
    .line 240
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    move-object v9, v4

    .line 244
    :cond_a
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 245
    .line 246
    .line 247
    move-result-wide v13

    .line 248
    iget-object v9, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 249
    .line 250
    if-nez v9, :cond_b

    .line 251
    .line 252
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    move-object v9, v4

    .line 256
    :cond_b
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 257
    .line 258
    .line 259
    move-result-wide v15

    .line 260
    const v17, 0x8002

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-static {v9}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v18

    .line 271
    invoke-static/range {v11 .. v18}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    const-string v10, "formatDateRange(context,\u2026ils.getTimeZone(context))"

    .line 276
    .line 277
    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v10, v0, Lcom/android/calendar/event/v2/j0;->w:Landroid/widget/TextView;

    .line 281
    .line 282
    if-nez v10, :cond_c

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_c
    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    :goto_4
    iget-object v9, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 293
    .line 294
    if-nez v9, :cond_d

    .line 295
    .line 296
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    move-object v9, v4

    .line 300
    :cond_d
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getDateType()I

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    const/4 v10, 0x0

    .line 305
    if-eq v9, v2, :cond_13

    .line 306
    .line 307
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->v:Landroid/widget/TextView;

    .line 308
    .line 309
    if-nez v1, :cond_e

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_e
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    :goto_5
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->q:Landroid/widget/TextView;

    .line 320
    .line 321
    if-nez v1, :cond_f

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_f
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    :goto_6
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->r:Landroid/widget/ImageView;

    .line 328
    .line 329
    if-nez v1, :cond_10

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_10
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    :goto_7
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->q:Landroid/widget/TextView;

    .line 336
    .line 337
    if-nez v1, :cond_11

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_11
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const v2, 0x7f07017d

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    iget-object v2, v0, Lcom/android/calendar/event/v2/j0;->q:Landroid/widget/TextView;

    .line 359
    .line 360
    if-eqz v2, :cond_12

    .line 361
    .line 362
    int-to-float v5, v1

    .line 363
    invoke-virtual {v2, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 364
    .line 365
    .line 366
    :cond_12
    iget-object v2, v0, Lcom/android/calendar/event/v2/j0;->v:Landroid/widget/TextView;

    .line 367
    .line 368
    if-eqz v2, :cond_18

    .line 369
    .line 370
    int-to-float v1, v1

    .line 371
    invoke-virtual {v2, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 372
    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_13
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    invoke-static {v5, v2, v8}, Lcom/miui/calendar/util/a0;->d(III)[I

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iget-object v5, v0, Lcom/android/calendar/event/v2/j0;->p:Landroid/widget/TextView;

    .line 384
    .line 385
    if-nez v5, :cond_14

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_14
    aget v2, v2, v10

    .line 389
    .line 390
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    .line 396
    .line 397
    :goto_9
    iget-object v2, v0, Lcom/android/calendar/event/v2/j0;->v:Landroid/widget/TextView;

    .line 398
    .line 399
    if-nez v2, :cond_15

    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_15
    invoke-static {v1}, La4/d;->g(Ljava/util/Calendar;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .line 408
    .line 409
    :goto_a
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->r:Landroid/widget/ImageView;

    .line 410
    .line 411
    const/16 v2, 0x8

    .line 412
    .line 413
    if-nez v1, :cond_16

    .line 414
    .line 415
    goto :goto_b

    .line 416
    :cond_16
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    :goto_b
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->q:Landroid/widget/TextView;

    .line 420
    .line 421
    if-nez v1, :cond_17

    .line 422
    .line 423
    goto :goto_c

    .line 424
    :cond_17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    :cond_18
    :goto_c
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->E:Landroid/widget/LinearLayout;

    .line 428
    .line 429
    if-nez v1, :cond_19

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_19
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 433
    .line 434
    .line 435
    :goto_d
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 436
    .line 437
    if-nez v1, :cond_1a

    .line 438
    .line 439
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    goto :goto_e

    .line 443
    :cond_1a
    move-object v4, v1

    .line 444
    :goto_e
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-direct {v0, v1}, Lcom/android/calendar/event/v2/j0;->Q(Ljava/lang/Boolean;)V

    .line 453
    .line 454
    .line 455
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->E:Landroid/widget/LinearLayout;

    .line 456
    .line 457
    if-eqz v1, :cond_1b

    .line 458
    .line 459
    new-instance v2, Lcom/android/calendar/event/v2/g0;

    .line 460
    .line 461
    invoke-direct {v2, v0}, Lcom/android/calendar/event/v2/g0;-><init>(Lcom/android/calendar/event/v2/j0;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    .line 466
    .line 467
    :cond_1b
    iget-object v1, v0, Lcom/android/calendar/event/v2/j0;->E:Landroid/widget/LinearLayout;

    .line 468
    .line 469
    invoke-static {v1}, Lcom/miui/calendar/util/v;->d(Landroid/view/View;)V

    .line 470
    .line 471
    .line 472
    return-void
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
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
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

.method private static final W(Lcom/android/calendar/event/v2/j0;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "mAnniversaryEvent"

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v2, v0

    .line 25
    :cond_1
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    xor-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, p0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object v2, v0

    .line 46
    :cond_2
    invoke-static {p1, v2}, Lcom/android/calendar/event/i;->h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move-object v0, p1

    .line 58
    :goto_0
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/j0;->Q(Ljava/lang/Boolean;)V

    .line 67
    .line 68
    .line 69
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

.method private final Y(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v1, v0, v2

    .line 18
    .line 19
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0x7d0

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/calendar/event/v2/i0;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/android/calendar/event/v2/i0;-><init>(Landroid/widget/TextView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    .line 38
    .line 39
    return-void
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

.method private static final Z(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    new-array v5, v0, [I

    .line 25
    .line 26
    const-string v0, "#BFFFFFFF"

    .line 27
    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    aput v1, v5, v2

    .line 34
    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    aput v1, v5, v2

    .line 41
    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x2

    .line 47
    aput v0, v5, v1

    .line 48
    .line 49
    const-string v0, "#00FFFFFF"

    .line 50
    .line 51
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x3

    .line 56
    aput v0, v5, v1

    .line 57
    .line 58
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v0, p1

    .line 65
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 78
    .line 79
    .line 80
    return-void
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

.method private final a0(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v1, v0, v2

    .line 18
    .line 19
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0x7d0

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/calendar/event/v2/h0;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/android/calendar/event/v2/h0;-><init>(Landroid/widget/TextView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    .line 38
    .line 39
    return-void
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

.method private static final b0(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    new-array v5, v0, [I

    .line 25
    .line 26
    const-string v0, "#FFFFFFFF"

    .line 27
    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    aput v1, v5, v2

    .line 34
    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    aput v1, v5, v2

    .line 41
    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x2

    .line 47
    aput v0, v5, v1

    .line 48
    .line 49
    const-string v0, "#00FFFFFF"

    .line 50
    .line 51
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x3

    .line 56
    aput v0, v5, v1

    .line 57
    .line 58
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v0, p1

    .line 65
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 79
    .line 80
    .line 81
    return-void
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

.method private static final c0(Lcom/android/calendar/event/v2/j0;Landroid/view/View;)V
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

.method private static final d0(Lcom/android/calendar/event/v2/j0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->z(Z)V

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

.method private static final e0(Lcom/android/calendar/event/v2/j0;Lw7/l;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ll3/b;->a(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1, v0}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->z(Z)V

    .line 25
    .line 26
    .line 27
    return-void
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

.method private static final g0(Lcom/android/calendar/event/v2/j0;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/calendar/event/v2/j0;->o:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method protected X(J)Lcom/android/calendar/common/event/schema/AnniversaryEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Ls1/a;->c(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/AnniversaryEvent;

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

.method protected f0(Lcom/android/calendar/common/event/schema/AnniversaryEvent;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/j0;->V()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/calendar/event/v2/j0;->J:Z

    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->K:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
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
    iput-object p3, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    const p3, 0x7f0d00af

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance p2, Lcom/android/calendar/event/v2/c0;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/android/calendar/event/v2/c0;-><init>(Lcom/android/calendar/event/v2/j0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const p3, 0x7f0a014f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object p1, p2

    .line 50
    :goto_0
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->o:Landroid/view/View;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const p3, 0x7f0a031f

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/view/ViewGroup;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object p1, p2

    .line 67
    :goto_1
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->F:Landroid/view/ViewGroup;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    const p3, 0x7f0a01a8

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/view/ViewGroup;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move-object p1, p2

    .line 84
    :goto_2
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->G:Landroid/view/ViewGroup;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    const p3, 0x7f0a00af

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/TextView;

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move-object p1, p2

    .line 101
    :goto_3
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->p:Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    const p3, 0x7f0a00aa

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/widget/TextView;

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    move-object p1, p2

    .line 118
    :goto_4
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->q:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    const p3, 0x7f0a00ab

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/widget/ImageView;

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_7
    move-object p1, p2

    .line 135
    :goto_5
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->r:Landroid/widget/ImageView;

    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    const p3, 0x7f0a00ac

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Landroid/widget/TextView;

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_8
    move-object p1, p2

    .line 152
    :goto_6
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->v:Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 155
    .line 156
    if-eqz p1, :cond_9

    .line 157
    .line 158
    const p3, 0x7f0a00ae

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/TextView;

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_9
    move-object p1, p2

    .line 169
    :goto_7
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->w:Landroid/widget/TextView;

    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 172
    .line 173
    if-eqz p1, :cond_a

    .line 174
    .line 175
    const p3, 0x7f0a0207

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroid/widget/TextView;

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_a
    move-object p1, p2

    .line 186
    :goto_8
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->x:Landroid/widget/TextView;

    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 189
    .line 190
    if-eqz p1, :cond_b

    .line 191
    .line 192
    const p3, 0x7f0a027e

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Landroid/widget/TextView;

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_b
    move-object p1, p2

    .line 203
    :goto_9
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->y:Landroid/widget/TextView;

    .line 204
    .line 205
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 206
    .line 207
    if-eqz p1, :cond_c

    .line 208
    .line 209
    const p3, 0x7f0a008c

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Landroid/widget/ImageView;

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_c
    move-object p1, p2

    .line 220
    :goto_a
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->z:Landroid/widget/ImageView;

    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 223
    .line 224
    if-eqz p1, :cond_d

    .line 225
    .line 226
    const p3, 0x7f0a008e

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Landroid/widget/TextView;

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_d
    move-object p1, p2

    .line 237
    :goto_b
    iput-object p1, p0, Lcom/android/calendar/event/v2/j0;->D:Landroid/widget/TextView;

    .line 238
    .line 239
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 240
    .line 241
    if-eqz p1, :cond_e

    .line 242
    .line 243
    const p2, 0x7f0a008b

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    move-object p2, p1

    .line 251
    check-cast p2, Landroid/widget/LinearLayout;

    .line 252
    .line 253
    :cond_e
    iput-object p2, p0, Lcom/android/calendar/event/v2/j0;->E:Landroid/widget/LinearLayout;

    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->m:Landroid/view/View;

    .line 256
    .line 257
    return-object p1
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
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
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/j0;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/j0;->f0(Lcom/android/calendar/common/event/schema/AnniversaryEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
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

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/j0;->H:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/j0;->I:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/calendar/event/v2/j0;->R()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic u(J)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/j0;->X(J)Lcom/android/calendar/common/event/schema/AnniversaryEvent;

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

.method public w(Lw7/l;)V
    .locals 11
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
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-nez v0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    new-instance v1, Lcom/android/calendar/event/b;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v1, v0, v2, v3}, Lcom/android/calendar/event/b;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/android/calendar/event/v2/d0;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/android/calendar/event/v2/d0;-><init>(Lcom/android/calendar/event/v2/j0;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/b;->B(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    const/4 v8, 0x2

    .line 65
    new-instance v9, Lcom/android/calendar/event/v2/e0;

    .line 66
    .line 67
    invoke-direct {v9, p0, p1}, Lcom/android/calendar/event/v2/e0;-><init>(Lcom/android/calendar/event/v2/j0;Lw7/l;)V

    .line 68
    .line 69
    .line 70
    const/4 v10, 0x1

    .line 71
    invoke-virtual/range {v1 .. v10}, Lcom/android/calendar/event/b;->t(JJJILjava/lang/Runnable;Z)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->z(Z)V

    .line 76
    .line 77
    .line 78
    return-void
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

.method public x()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->x()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_4

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/j0;->J:Z

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "withAppendedId(CalendarC\u2026URI, eventInfo!!.eventId)"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/content/Intent;

    .line 57
    .line 58
    const-string v3, "android.intent.action.EDIT"

    .line 59
    .line 60
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 64
    .line 65
    const-string v3, "mAnniversaryEvent"

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object v0, v1

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    const-string v0, "beginTime"

    .line 78
    .line 79
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->n:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move-object v1, v0

    .line 91
    :goto_1
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    const-string v3, "endTime"

    .line 96
    .line 97
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    const-string v1, "allDay"

    .line 102
    .line 103
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x2

    .line 107
    const-string v1, "extra_key_edit_type"

    .line 108
    .line 109
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-class v1, Lcom/android/calendar/event/EditEventActivity;

    .line 117
    .line 118
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_2
    return-void
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

.method public y(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->y(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->G:Landroid/view/ViewGroup;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->F:Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/j0;->G:Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_3
    iput-boolean p1, p0, Lcom/android/calendar/event/v2/j0;->H:Z

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/j0;->I:Z

    .line 56
    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/android/calendar/event/v2/j0;->R()V

    .line 60
    .line 61
    .line 62
    :cond_5
    if-eqz p1, :cond_6

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/calendar/event/v2/j0;->o:Landroid/view/View;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    new-instance v0, Lcom/android/calendar/event/v2/f0;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/calendar/event/v2/f0;-><init>(Lcom/android/calendar/event/v2/j0;)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v1, 0x3e8

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    :cond_6
    return-void
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
