.class public final Lcom/android/calendar/event/v2/sms/m;
.super Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;
.source "FlightEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/v2/sms/m$a;,
        Lcom/android/calendar/event/v2/sms/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment<",
        "Lcom/android/calendar/common/event/schema/FlightEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\"\u0018\u0000 G2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002HIB\u0007\u00a2\u0006\u0004\u0008E\u0010FJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J>\u0010\u0013\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J \u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0014J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0008\u0010\u001d\u001a\u00020\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0002H\u0014J\u0008\u0010 \u001a\u00020\u000fH\u0014J\u0008\u0010!\u001a\u00020\u000fH\u0014J\u0008\u0010#\u001a\u00020\"H\u0014J\u0008\u0010$\u001a\u00020\u0005H\u0014J\u0016\u0010%\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0012\u0010\'\u001a\u0004\u0018\u00010\u00022\u0006\u0010&\u001a\u00020\u0011H\u0014R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010-\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010*R\u0016\u0010/\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008.\u0010*R\u0016\u00100\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010*R\u0016\u00102\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00081\u0010*R\u0016\u00104\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00083\u0010*R\u0016\u00106\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00085\u0010*R\u0016\u00108\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00087\u0010*R\u0016\u0010:\u001a\u00020\u00038\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008!\u00109R\u0016\u0010;\u001a\u00020\u00038\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u00109R\u0016\u0010=\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008<\u0010*R\u0016\u0010?\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008>\u0010*R\u0016\u0010B\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0014\u0010D\u001a\u00020\u000b8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010C\u00a8\u0006J"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/m;",
        "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/FlightEvent;",
        "Landroid/view/View;",
        "rootView",
        "Lkotlin/u;",
        "W0",
        "b1",
        "",
        "Lw3/b;",
        "items",
        "",
        "passenger",
        "cipherText",
        "seatNo",
        "",
        "status",
        "",
        "groupId",
        "S0",
        "depTime",
        "depCity",
        "arrTime",
        "a1",
        "Landroid/content/Intent;",
        "intent",
        "h0",
        "d0",
        "c0",
        "s0",
        "event",
        "Z0",
        "U",
        "T",
        "",
        "e0",
        "r0",
        "O",
        "eventId",
        "Y0",
        "Landroid/widget/TextView;",
        "L",
        "Landroid/widget/TextView;",
        "mFlightNumAndDate",
        "M",
        "mFlightStatus",
        "N",
        "mStartAirport",
        "mArrivalAirport",
        "P",
        "mStartTime",
        "Q",
        "mArrivalTime",
        "R",
        "mOverDays",
        "S",
        "mTimeCost",
        "Landroid/view/View;",
        "mLeftDots",
        "mRightDots",
        "V",
        "mTipsView",
        "W",
        "mDisclaimerView",
        "X",
        "Lcom/android/calendar/common/event/schema/FlightEvent;",
        "mFlightEvent",
        "()Ljava/lang/String;",
        "deleteToast",
        "<init>",
        "()V",
        "Z",
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
.field public static final Z:Lcom/android/calendar/event/v2/sms/m$a;


# instance fields
.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Lcom/android/calendar/common/event/schema/FlightEvent;

.field public Y:Ljava/util/Map;
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

    new-instance v0, Lcom/android/calendar/event/v2/sms/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/v2/sms/m$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/v2/sms/m;->Z:Lcom/android/calendar/event/v2/sms/m$a;

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
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->Y:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic L0(Lcom/android/calendar/event/v2/sms/m;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/sms/m;->U0(Lcom/android/calendar/event/v2/sms/m;)V

    return-void
.end method

.method public static synthetic M0(Lcom/android/calendar/event/v2/sms/m;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/sms/m;->V0(Lcom/android/calendar/event/v2/sms/m;)V

    return-void
.end method

.method public static synthetic N0(ILcom/android/calendar/event/v2/sms/m;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/m;->T0(ILcom/android/calendar/event/v2/sms/m;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O0(Lcom/android/calendar/event/v2/sms/m;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/sms/m;->X0(Lcom/android/calendar/event/v2/sms/m;)V

    return-void
.end method

.method public static final synthetic P0(Lcom/android/calendar/event/v2/sms/m;)Lcom/android/calendar/event/EventInfoActivity;
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

.method public static final synthetic Q0(Lcom/android/calendar/event/v2/sms/m;)Lcom/android/calendar/common/event/schema/FlightEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

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

.method public static final synthetic R0(Lcom/android/calendar/event/v2/sms/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/v2/sms/m;->a1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method private final S0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw3/b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lw3/b;

    .line 8
    .line 9
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq p5, v1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq p5, v2, :cond_0

    .line 17
    .line 18
    const p4, 0x7f1203dc

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    iput-object p4, v0, Lw3/b;->b:Ljava/lang/String;

    .line 26
    .line 27
    const p4, 0x7f1201eb

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    iput-object p4, v0, Lw3/b;->d:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v2, 0x7f1201ea

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, v0, Lw3/b;->b:Ljava/lang/String;

    .line 45
    .line 46
    const v2, 0x7f1201f4

    .line 47
    .line 48
    .line 49
    new-array v3, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    aput-object p4, v3, v4

    .line 53
    .line 54
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    iput-object p4, v0, Lw3/b;->d:Ljava/lang/String;

    .line 59
    .line 60
    :goto_0
    iput-object p2, v0, Lw3/b;->c:Ljava/lang/String;

    .line 61
    .line 62
    iput-boolean v1, v0, Lw3/b;->e:Z

    .line 63
    .line 64
    iput-wide p6, v0, Lw3/b;->f:J

    .line 65
    .line 66
    new-instance p2, Lcom/android/calendar/event/v2/sms/l;

    .line 67
    .line 68
    invoke-direct {p2, p5, p0, p3}, Lcom/android/calendar/event/v2/sms/l;-><init>(ILcom/android/calendar/event/v2/sms/m;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, v0, Lw3/b;->g:Ljava/lang/Runnable;

    .line 72
    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
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
.end method

.method private static final T0(ILcom/android/calendar/event/v2/sms/m;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$cipherText"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, v0, v1, p1}, Lx3/c;->e(Landroid/content/Context;JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-static {p0, v0, v1, p2}, Lx3/c;->d(Landroid/content/Context;JLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const-string p0, "travel_to_flight_check_in"

    .line 63
    .line 64
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
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

.method private static final U0(Lcom/android/calendar/event/v2/sms/m;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, v1, p0}, Lx3/c;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p0, "travel_to_flight_state"

    .line 34
    .line 35
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
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

.method private static final V0(Lcom/android/calendar/event/v2/sms/m;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, v1, v2, p0}, Lx3/c;->e(Landroid/content/Context;JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p0, "travel_to_flight_check_in"

    .line 34
    .line 35
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
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

.method private final W0(Landroid/view/View;)V
    .locals 10

    .line 1
    const v0, 0x7f0a023c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->W:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const v3, 0x7f1201ef

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const v2, 0xff1a

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const v3, 0x7f1201f0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/m;->W:Landroid/widget/TextView;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    const-string v2, "mDisclaimerView"

    .line 66
    .line 67
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v2, v3

    .line 71
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    const v0, 0x7f0a062c

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->V:Landroid/widget/TextView;

    .line 87
    .line 88
    const p1, 0x7f1201ed

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "getString(R.string.flight_detail_tips_url)"

    .line 96
    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const v0, 0x7f1201ec

    .line 101
    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    new-array v1, v1, [Ljava/lang/Object;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    aput-object p1, v1, v2

    .line 108
    .line 109
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v0, "getString(R.string.flight_detail_tips, tipsUrl)"

    .line 114
    .line 115
    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/android/calendar/event/v2/sms/k;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/android/calendar/event/v2/sms/k;-><init>(Lcom/android/calendar/event/v2/sms/m;)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 124
    .line 125
    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    const/4 v8, 0x6

    .line 131
    const/4 v9, 0x0

    .line 132
    move-object v5, p1

    .line 133
    invoke-static/range {v4 .. v9}, Lkotlin/text/k;->U(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    new-instance v4, Lcom/miui/calendar/util/z0$j;

    .line 138
    .line 139
    invoke-direct {v4, v0}, Lcom/miui/calendar/util/z0$j;-><init>(Lcom/miui/calendar/util/z0$j$a;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    add-int/2addr p1, v2

    .line 147
    const/16 v0, 0x21

    .line 148
    .line 149
    invoke-virtual {v1, v4, v2, p1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->V:Landroid/widget/TextView;

    .line 153
    .line 154
    const-string v0, "mTipsView"

    .line 155
    .line 156
    if-nez p1, :cond_1

    .line 157
    .line 158
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object p1, v3

    .line 162
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->V:Landroid/widget/TextView;

    .line 166
    .line 167
    if-nez p1, :cond_2

    .line 168
    .line 169
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_2
    move-object v3, p1

    .line 174
    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 179
    .line 180
    .line 181
    return-void
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
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
.end method

.method private static final X0(Lcom/android/calendar/event/v2/sms/m;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v1, "android.intent.action.VIEW"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "market://details?id=vz.com&ref=calendar"

    .line 14
    .line 15
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const/high16 v1, 0x10000000

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    return-void
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
.end method

.method private final a1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepCity()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p1, "Cal:D:FlightDetailActivity"

    .line 39
    .line 40
    const-string p2, "updateEventsTable(): two data inconsistencies, so need to update the database"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lcom/miui/calendar/event/travel/a;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrDate()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Lcom/miui/calendar/event/travel/a;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getDepAirport()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static/range {v0 .. v7}, Lcom/android/calendar/event/e0;->i(Landroid/content/Context;JJJLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
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

.method private final b1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mDisclaimerView"

    .line 8
    .line 9
    const-string v2, "mTipsView"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->V:Landroid/widget/TextView;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v3

    .line 22
    :cond_0
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->W:Landroid/widget/TextView;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v3, v0

    .line 36
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->V:Landroid/widget/TextView;

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v0, v3

    .line 48
    :cond_3
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->W:Landroid/widget/TextView;

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move-object v3, v0

    .line 61
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
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


# virtual methods
.method public O(Ljava/util/List;)V
    .locals 10
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
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightState:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lw3/b;

    .line 38
    .line 39
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 40
    .line 41
    .line 42
    const v2, 0x7f1201f5

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v0, Lw3/b;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v2, v2, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightState:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v2, v0, Lw3/b;->d:Ljava/lang/String;

    .line 64
    .line 65
    iput-boolean v1, v0, Lw3/b;->e:Z

    .line 66
    .line 67
    new-instance v2, Lcom/android/calendar/event/v2/sms/i;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/android/calendar/event/v2/sms/i;-><init>(Lcom/android/calendar/event/v2/sms/m;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v0, Lw3/b;->g:Ljava/lang/Runnable;

    .line 73
    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;->getPassengers()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_1

    .line 92
    .line 93
    new-instance v0, Lw3/b;

    .line 94
    .line 95
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 96
    .line 97
    .line 98
    const v2, 0x7f1201e9

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, v0, Lw3/b;->b:Ljava/lang/String;

    .line 106
    .line 107
    const v2, 0x7f1201eb

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iput-object v2, v0, Lw3/b;->d:Ljava/lang/String;

    .line 115
    .line 116
    iput-boolean v1, v0, Lw3/b;->e:Z

    .line 117
    .line 118
    new-instance v1, Lcom/android/calendar/event/v2/sms/j;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/sms/j;-><init>(Lcom/android/calendar/event/v2/sms/m;)V

    .line 121
    .line 122
    .line 123
    iput-object v1, v0, Lw3/b;->g:Ljava/lang/Runnable;

    .line 124
    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;->getPassengers()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/android/calendar/common/event/schema/FlightPassenger;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const-string v2, "passenger.name"

    .line 160
    .line 161
    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->getCipherText()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    const-string v2, "passenger.cipherText"

    .line 169
    .line 170
    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->getSeatNo()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const-string v2, "passenger.seatNo"

    .line 178
    .line 179
    invoke-static {v6, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->getStatus()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    const-wide/16 v8, 0x1

    .line 187
    .line 188
    move-object v2, p0

    .line 189
    move-object v3, p1

    .line 190
    invoke-direct/range {v2 .. v9}, Lcom/android/calendar/event/v2/sms/m;->S0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->H0(Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    return-void
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
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
.end method

.method protected T()I
    .locals 1

    const v0, 0x7f0d00e8

    return v0
.end method

.method protected U()I
    .locals 1

    const v0, 0x7f0d00e9

    return v0
.end method

.method protected V()Ljava/lang/String;
    .locals 2

    .line 1
    const v0, 0x7f1201f2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getString(R.string.fligh\u2026vent_delete_successfully)"

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

.method protected Y0(J)Lcom/android/calendar/common/event/schema/FlightEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Ls1/f;->a(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/FlightEvent;

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

.method protected Z0(Lcom/android/calendar/common/event/schema/FlightEvent;)V
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/m;->s0()V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->onEventLoad(Lcom/android/calendar/common/event/schema/TravelEvent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/android/calendar/event/v2/sms/m$b;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/android/calendar/event/v2/sms/m$b;-><init>(Lcom/android/calendar/event/v2/sms/m;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0, v1, v2}, Lx3/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lu1/b$a;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
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
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->i0(Lw3/c;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->X()Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->W()Lw3/c;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/DynamicLinearLayout;->setAdapter(Lcom/miui/calendar/view/i;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/android/calendar/event/v2/sms/m;->W0(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    return-void
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
    const v0, 0x7f0a02a8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "rootView.findViewById<Te\u2026ew>(R.id.flight_num_date)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->L:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f0a02a9

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "rootView.findViewById<Te\u2026View>(R.id.flight_status)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->M:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0a05a5

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "rootView.findViewById<Te\u2026View>(R.id.start_airport)"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->N:Landroid/widget/TextView;

    .line 53
    .line 54
    const v0, 0x7f0a00c0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "rootView.findViewById<Te\u2026ew>(R.id.arrival_airport)"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->O:Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f0a05ad

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "rootView.findViewById<TextView>(R.id.start_time)"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->P:Landroid/widget/TextView;

    .line 85
    .line 86
    const v0, 0x7f0a00c5

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "rootView.findViewById<TextView>(R.id.arrive_time)"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->Q:Landroid/widget/TextView;

    .line 101
    .line 102
    const v0, 0x7f0a0474

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "rootView.findViewById<TextView>(R.id.over_days)"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    check-cast v0, Landroid/widget/TextView;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->R:Landroid/widget/TextView;

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
    const-string v1, "rootView.findViewById<TextView>(R.id.time_cost)"

    .line 126
    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->S:Landroid/widget/TextView;

    .line 133
    .line 134
    const v0, 0x7f0a0379

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "rootView.findViewById(R.id.left_dots)"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->T:Landroid/view/View;

    .line 147
    .line 148
    const v0, 0x7f0a04fd

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v0, "rootView.findViewById(R.id.right_dots)"

    .line 156
    .line 157
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->U:Landroid/view/View;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->N:Landroid/widget/TextView;

    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    if-nez p1, :cond_0

    .line 166
    .line 167
    const-string p1, "mStartAirport"

    .line 168
    .line 169
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object p1, v0

    .line 173
    :cond_0
    const/4 v1, 0x1

    .line 174
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/m;->O:Landroid/widget/TextView;

    .line 178
    .line 179
    if-nez p1, :cond_1

    .line 180
    .line 181
    const-string p1, "mArrivalAirport"

    .line 182
    .line 183
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    move-object v0, p1

    .line 188
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 189
    .line 190
    .line 191
    return-void
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
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
.end method

.method protected e0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

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
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "Cal:D:FlightEventInfoFragment"

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const-string v0, "_id"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 40
    .line 41
    .line 42
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "parseIntent() mFlightEvent.eventId="

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    :goto_0
    const-string p1, "parseIntent() no event id, return"

    .line 70
    .line 71
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
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

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/m;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/m;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/m;->Z0(Lcom/android/calendar/common/event/schema/FlightEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/m;->Z0(Lcom/android/calendar/common/event/schema/FlightEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/TravelEvent;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/m;->Z0(Lcom/android/calendar/common/event/schema/FlightEvent;)V

    return-void
.end method

.method protected r0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->r0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/m;->b1()V

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

.method public s0()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->L:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "mFlightNumAndDate"

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightCompany()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v6, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    iget-object v7, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 37
    .line 38
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static {v6, v7}, Lcom/miui/calendar/event/travel/a;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    const/4 v8, 0x1

    .line 47
    invoke-static {v5, v8, v6, v7}, Lx3/b;->c(Landroid/content/Context;IJ)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v3, v4, v5}, Lcom/miui/calendar/event/travel/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 65
    .line 66
    const/4 v4, 0x5

    .line 67
    const-string v5, "mStartTime"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightSchema;->getDepTime()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->P:Landroid/widget/TextView;

    .line 89
    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    move-object v1, v2

    .line 96
    :cond_1
    iget-object v7, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 97
    .line 98
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/FlightSchema;->getDepTime()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->P:Landroid/widget/TextView;

    .line 123
    .line 124
    if-nez v1, :cond_3

    .line 125
    .line 126
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move-object v1, v2

    .line 130
    :cond_3
    iget-object v7, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v9, "mFlightEvent.depTime"

    .line 137
    .line 138
    invoke-static {v7, v9}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-static {v7, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v7, "mArrivalTime"

    .line 158
    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightSchema;->getArrTime()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_6

    .line 176
    .line 177
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->Q:Landroid/widget/TextView;

    .line 178
    .line 179
    if-nez v1, :cond_5

    .line 180
    .line 181
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    move-object v1, v2

    .line 185
    :cond_5
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/FlightSchema;->getArrTime()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_6
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_8

    .line 210
    .line 211
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->Q:Landroid/widget/TextView;

    .line 212
    .line 213
    if-nez v1, :cond_7

    .line 214
    .line 215
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    move-object v1, v2

    .line 219
    :cond_7
    iget-object v9, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 220
    .line 221
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    const-string v10, "mFlightEvent.arrTime"

    .line 226
    .line 227
    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->N:Landroid/widget/TextView;

    .line 241
    .line 242
    if-nez v1, :cond_9

    .line 243
    .line 244
    const-string v1, "mStartAirport"

    .line 245
    .line 246
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    move-object v1, v2

    .line 250
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 256
    .line 257
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepCity()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 265
    .line 266
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/FlightEvent;->getDepAirport()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/FlightEvent;->getDepTerminal()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->O:Landroid/widget/TextView;

    .line 290
    .line 291
    if-nez v1, :cond_a

    .line 292
    .line 293
    const-string v1, "mArrivalAirport"

    .line 294
    .line 295
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    move-object v1, v2

    .line 299
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 305
    .line 306
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrCity()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/FlightEvent;->getArrAirport()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 323
    .line 324
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/FlightEvent;->getArrTerminal()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    if-eqz v1, :cond_c

    .line 345
    .line 346
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->M:Landroid/widget/TextView;

    .line 347
    .line 348
    if-nez v1, :cond_b

    .line 349
    .line 350
    const-string v1, "mFlightStatus"

    .line 351
    .line 352
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    move-object v1, v2

    .line 356
    :cond_b
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 357
    .line 358
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    iget-object v3, v3, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightState:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 373
    .line 374
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const/16 v3, 0x20

    .line 382
    .line 383
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->P:Landroid/widget/TextView;

    .line 387
    .line 388
    if-nez v4, :cond_d

    .line 389
    .line 390
    invoke-static {v5}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    move-object v4, v2

    .line 394
    :cond_d
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    iget-object v5, v0, Lcom/android/calendar/event/v2/sms/m;->X:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 411
    .line 412
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrDate()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->Q:Landroid/widget/TextView;

    .line 423
    .line 424
    if-nez v3, :cond_e

    .line 425
    .line 426
    invoke-static {v7}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    move-object v3, v2

    .line 430
    :cond_e
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-static {v1, v3}, Lcom/miui/calendar/event/travel/a;->l(Ljava/lang/String;Ljava/lang/String;)[J

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    aget-wide v3, v1, v6

    .line 446
    .line 447
    const-wide/16 v9, 0x0

    .line 448
    .line 449
    cmp-long v3, v3, v9

    .line 450
    .line 451
    const-string v4, "mOverDays"

    .line 452
    .line 453
    const/16 v5, 0x8

    .line 454
    .line 455
    if-lez v3, :cond_11

    .line 456
    .line 457
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->R:Landroid/widget/TextView;

    .line 458
    .line 459
    if-nez v3, :cond_f

    .line 460
    .line 461
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    move-object v3, v2

    .line 465
    :cond_f
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->R:Landroid/widget/TextView;

    .line 469
    .line 470
    if-nez v3, :cond_10

    .line 471
    .line 472
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    move-object v3, v2

    .line 476
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    const v7, 0x7f120691

    .line 481
    .line 482
    .line 483
    new-array v11, v8, [Ljava/lang/Object;

    .line 484
    .line 485
    aget-wide v12, v1, v6

    .line 486
    .line 487
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 488
    .line 489
    .line 490
    move-result-object v12

    .line 491
    aput-object v12, v11, v6

    .line 492
    .line 493
    invoke-virtual {v4, v7, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    goto :goto_2

    .line 501
    :cond_11
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->R:Landroid/widget/TextView;

    .line 502
    .line 503
    if-nez v3, :cond_12

    .line 504
    .line 505
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    move-object v3, v2

    .line 509
    :cond_12
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    :goto_2
    aget-wide v3, v1, v8

    .line 513
    .line 514
    const/4 v7, 0x2

    .line 515
    aget-wide v11, v1, v7

    .line 516
    .line 517
    cmp-long v1, v3, v9

    .line 518
    .line 519
    const v13, 0x7f100056

    .line 520
    .line 521
    .line 522
    const v14, 0x7f100055

    .line 523
    .line 524
    .line 525
    const-string v15, "mTimeCost"

    .line 526
    .line 527
    if-lez v1, :cond_14

    .line 528
    .line 529
    cmp-long v16, v11, v9

    .line 530
    .line 531
    if-lez v16, :cond_14

    .line 532
    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    long-to-int v9, v3

    .line 542
    new-array v10, v8, [Ljava/lang/Object;

    .line 543
    .line 544
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    aput-object v3, v10, v6

    .line 549
    .line 550
    invoke-virtual {v1, v14, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    const-string v3, "mActivity.resources.getQ\u2026rs, hours.toInt(), hours)"

    .line 555
    .line 556
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    long-to-int v4, v11

    .line 568
    new-array v9, v8, [Ljava/lang/Object;

    .line 569
    .line 570
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    aput-object v10, v9, v6

    .line 575
    .line 576
    invoke-virtual {v3, v13, v4, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    const-string v4, "mActivity.resources.getQ\u2026mins, mins.toInt(), mins)"

    .line 581
    .line 582
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->S:Landroid/widget/TextView;

    .line 586
    .line 587
    if-nez v4, :cond_13

    .line 588
    .line 589
    invoke-static {v15}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    move-object v4, v2

    .line 593
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    const v10, 0x7f120695

    .line 598
    .line 599
    .line 600
    new-array v7, v7, [Ljava/lang/Object;

    .line 601
    .line 602
    aput-object v1, v7, v6

    .line 603
    .line 604
    aput-object v3, v7, v8

    .line 605
    .line 606
    invoke-virtual {v9, v10, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    .line 612
    .line 613
    goto :goto_3

    .line 614
    :cond_14
    if-lez v1, :cond_16

    .line 615
    .line 616
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->S:Landroid/widget/TextView;

    .line 617
    .line 618
    if-nez v1, :cond_15

    .line 619
    .line 620
    invoke-static {v15}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    move-object v1, v2

    .line 624
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 629
    .line 630
    .line 631
    move-result-object v7

    .line 632
    long-to-int v9, v3

    .line 633
    new-array v10, v8, [Ljava/lang/Object;

    .line 634
    .line 635
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    aput-object v3, v10, v6

    .line 640
    .line 641
    invoke-virtual {v7, v14, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    goto :goto_3

    .line 649
    :cond_16
    cmp-long v1, v11, v9

    .line 650
    .line 651
    if-lez v1, :cond_18

    .line 652
    .line 653
    iget-object v1, v0, Lcom/android/calendar/event/v2/sms/m;->S:Landroid/widget/TextView;

    .line 654
    .line 655
    if-nez v1, :cond_17

    .line 656
    .line 657
    invoke-static {v15}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    move-object v1, v2

    .line 661
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    long-to-int v4, v11

    .line 670
    new-array v7, v8, [Ljava/lang/Object;

    .line 671
    .line 672
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 673
    .line 674
    .line 675
    move-result-object v9

    .line 676
    aput-object v9, v7, v6

    .line 677
    .line 678
    invoke-virtual {v3, v13, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    .line 684
    .line 685
    goto :goto_3

    .line 686
    :cond_18
    move v8, v6

    .line 687
    :goto_3
    const-string v1, "mRightDots"

    .line 688
    .line 689
    const-string v3, "mLeftDots"

    .line 690
    .line 691
    if-eqz v8, :cond_1c

    .line 692
    .line 693
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->S:Landroid/widget/TextView;

    .line 694
    .line 695
    if-nez v4, :cond_19

    .line 696
    .line 697
    invoke-static {v15}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    move-object v4, v2

    .line 701
    :cond_19
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 702
    .line 703
    .line 704
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->T:Landroid/view/View;

    .line 705
    .line 706
    if-nez v4, :cond_1a

    .line 707
    .line 708
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    move-object v4, v2

    .line 712
    :cond_1a
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 713
    .line 714
    .line 715
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->U:Landroid/view/View;

    .line 716
    .line 717
    if-nez v3, :cond_1b

    .line 718
    .line 719
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    goto :goto_4

    .line 723
    :cond_1b
    move-object v2, v3

    .line 724
    :goto_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 725
    .line 726
    .line 727
    goto :goto_6

    .line 728
    :cond_1c
    iget-object v4, v0, Lcom/android/calendar/event/v2/sms/m;->T:Landroid/view/View;

    .line 729
    .line 730
    if-nez v4, :cond_1d

    .line 731
    .line 732
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    move-object v4, v2

    .line 736
    :cond_1d
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 737
    .line 738
    .line 739
    iget-object v3, v0, Lcom/android/calendar/event/v2/sms/m;->U:Landroid/view/View;

    .line 740
    .line 741
    if-nez v3, :cond_1e

    .line 742
    .line 743
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    goto :goto_5

    .line 747
    :cond_1e
    move-object v2, v3

    .line 748
    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 749
    .line 750
    .line 751
    :goto_6
    return-void
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

.method public bridge synthetic u(J)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/m;->Y0(J)Lcom/android/calendar/common/event/schema/FlightEvent;

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
