.class public abstract Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;
.super Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;
.source "TravelEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$a;,
        Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/calendar/common/event/schema/TravelEvent;",
        ">",
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008&\u0018\u0000 <*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0002=>B\u0007\u00a2\u0006\u0004\u0008:\u0010;J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002J\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0016\u0010\u0012\u001a\u00020\u00042\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010*\u001a\u00020\u001f8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010!\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%R$\u00101\u001a\u0004\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108\u00a8\u0006?"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/TravelEvent;",
        "T",
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;",
        "Lkotlin/u;",
        "D0",
        "",
        "city",
        "C0",
        "longitude",
        "latitude",
        "G0",
        "event",
        "onEventLoad",
        "(Lcom/android/calendar/common/event/schema/TravelEvent;)V",
        "",
        "Lw3/b;",
        "items",
        "H0",
        "Lcom/android/calendar/common/event/schema/FlightSchema;",
        "z",
        "Lcom/android/calendar/common/event/schema/FlightSchema;",
        "mFlightRemote",
        "",
        "D",
        "Z",
        "getMIsOverdue",
        "()Z",
        "setMIsOverdue",
        "(Z)V",
        "mIsOverdue",
        "",
        "E",
        "I",
        "getMDepType",
        "()I",
        "setMDepType",
        "(I)V",
        "mDepType",
        "F",
        "getMArrType",
        "setMArrType",
        "mArrType",
        "G",
        "Ljava/lang/String;",
        "B0",
        "()Ljava/lang/String;",
        "F0",
        "(Ljava/lang/String;)V",
        "mWeatherString",
        "Lorg/json/JSONArray;",
        "H",
        "Lorg/json/JSONArray;",
        "getMVirtualSimData",
        "()Lorg/json/JSONArray;",
        "E0",
        "(Lorg/json/JSONArray;)V",
        "mVirtualSimData",
        "<init>",
        "()V",
        "K",
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
.field public static final K:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$a;


# instance fields
.field private D:Z

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Lorg/json/JSONArray;

.field private final I:Lu1/b$a;

.field public J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/android/calendar/common/event/schema/FlightSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->K:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$a;

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
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->J:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->E:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->F:I

    .line 15
    .line 16
    new-instance v0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$c;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$c;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->I:Lu1/b$a;

    .line 22
    .line 23
    return-void
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
.end method

.method public static final synthetic A0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->G0(Ljava/lang/String;Ljava/lang/String;)V

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
.end method

.method private final C0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0xe

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lu1/d;->c(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "name"

    .line 21
    .line 22
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, v1}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {v1, v2, v1}, Lu1/d;->f(Ljava/lang/String;ILjava/lang/Object;)Lu1/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, v0, p1}, Lu1/a;->B(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance v0, Lu1/b;

    .line 46
    .line 47
    new-instance v1, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$b;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$b;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Ltc/a;->q(Ltc/b;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private final D0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "requestData(): mIsOverdue:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->D:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:TravelEventInfoFragment"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->D:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "requestData(): Overdue travel"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->F:I

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/calendar/common/event/schema/TravelEvent;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrCity()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "event.arrCity"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->C0(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->F:I

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-ne v0, v1, :cond_6

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->z:Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepcode:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object v0, v2

    .line 71
    :goto_0
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const/4 v1, 0x0

    .line 81
    :cond_4
    :goto_1
    if-nez v1, :cond_6

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->z:Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    iget-object v2, v1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrcode:Ljava/lang/String;

    .line 92
    .line 93
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->I:Lu1/b$a;

    .line 94
    .line 95
    invoke-static {v0, v2, v1}, Lx3/c;->c(Landroid/content/Context;Ljava/lang/String;Lu1/b$a;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    return-void
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

.method private final G0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    new-instance v4, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v4, p0, p2, p1, v0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/c;)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
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

.method private static final I0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "travel_to_virtual_sim"

    .line 10
    .line 11
    invoke-static {p0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "Cal:D:TravelDetailFragment"

    .line 17
    .line 18
    const-string v0, "bindVirtualSimView()"

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
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

.method private static final J0()V
    .locals 0

    return-void
.end method

.method private static final K0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/widget/CompoundButton;Z)V
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
    check-cast v0, Lcom/android/calendar/common/event/schema/TravelEvent;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq v0, p2, :cond_1

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
    check-cast v1, Lcom/android/calendar/common/event/schema/TravelEvent;

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
    new-instance p2, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$e;

    .line 41
    .line 42
    invoke-direct {p2, p0, p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$e;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/widget/CompoundButton;)V

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
    check-cast p1, Lcom/android/calendar/common/event/schema/TravelEvent;

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

.method public static synthetic v0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->I0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic w0()V
    .locals 0

    invoke-static {}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->J0()V

    return-void
.end method

.method public static synthetic x0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->K0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final synthetic y0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;)Lcom/android/calendar/common/event/schema/TravelEvent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/calendar/common/event/schema/TravelEvent;

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

.method public static final synthetic z0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;
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


# virtual methods
.method protected final B0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->G:Ljava/lang/String;

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

.method protected final E0(Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->H:Lorg/json/JSONArray;

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

.method protected final F0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->G:Ljava/lang/String;

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

.method protected H0(Ljava/util/List;)V
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
    iget v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->F:I

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->G:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->D:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Lw3/b;

    .line 23
    .line 24
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0806de

    .line 28
    .line 29
    .line 30
    iput v1, v0, Lw3/b;->a:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/calendar/common/event/schema/TravelEvent;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrDate()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/calendar/common/event/schema/TravelEvent;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const v1, 0x7f12068c

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    const v1, 0x7f12068d

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 83
    .line 84
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/calendar/common/event/schema/TravelEvent;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrCity()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 v2, 0x20

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->G:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iput-object v1, v0, Lw3/b;->c:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->H:Lorg/json/JSONArray;

    .line 122
    .line 123
    invoke-static {v0}, Lx3/c;->a(Lorg/json/JSONArray;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->F:I

    .line 128
    .line 129
    const/4 v2, 0x1

    .line 130
    if-ne v1, v2, :cond_3

    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->H:Lorg/json/JSONArray;

    .line 133
    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-lez v1, :cond_3

    .line 144
    .line 145
    if-eqz v0, :cond_3

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1, v0}, Lcom/miui/calendar/util/i;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    new-instance v1, Lw3/b;

    .line 158
    .line 159
    invoke-direct {v1}, Lw3/b;-><init>()V

    .line 160
    .line 161
    .line 162
    const v3, 0x7f0806e1

    .line 163
    .line 164
    .line 165
    iput v3, v1, Lw3/b;->a:I

    .line 166
    .line 167
    const v3, 0x7f12068b

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    iput-object v3, v1, Lw3/b;->b:Ljava/lang/String;

    .line 175
    .line 176
    new-instance v3, Lcom/android/calendar/event/v2/sms/s;

    .line 177
    .line 178
    invoke-direct {v3, p0, v0}, Lcom/android/calendar/event/v2/sms/s;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/content/Intent;)V

    .line 179
    .line 180
    .line 181
    iput-object v3, v1, Lw3/b;->g:Ljava/lang/Runnable;

    .line 182
    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_3
    new-instance v0, Lw3/d;

    .line 187
    .line 188
    invoke-direct {v0}, Lw3/d;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-boolean v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->D:Z

    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    const v1, 0x7f12068a

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 204
    .line 205
    iput-boolean v3, v0, Lw3/d;->h:Z

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    const v1, 0x7f120689

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 216
    .line 217
    iput-boolean v3, v0, Lw3/b;->e:Z

    .line 218
    .line 219
    iput-boolean v2, v0, Lw3/d;->h:Z

    .line 220
    .line 221
    new-instance v1, Lcom/android/calendar/event/v2/sms/t;

    .line 222
    .line 223
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/t;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v1, v0, Lw3/b;->g:Ljava/lang/Runnable;

    .line 227
    .line 228
    const v1, 0x7f1201d1

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    iput-object v1, v0, Lw3/d;->i:Ljava/lang/String;

    .line 236
    .line 237
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    const v3, 0x7f0d0152

    .line 244
    .line 245
    .line 246
    const v4, 0x1020014

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Y()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 254
    .line 255
    .line 256
    const v2, 0x7f0d0150

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 260
    .line 261
    .line 262
    iput-object v1, v0, Lw3/d;->j:Landroid/widget/SpinnerAdapter;

    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->a0()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    iput v1, v0, Lw3/d;->k:I

    .line 269
    .line 270
    new-instance v1, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$d;

    .line 271
    .line 272
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$d;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;)V

    .line 273
    .line 274
    .line 275
    iput-object v1, v0, Lw3/d;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 276
    .line 277
    :goto_2
    const-wide/16 v1, 0x3

    .line 278
    .line 279
    iput-wide v1, v0, Lw3/b;->f:J

    .line 280
    .line 281
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->D:Z

    .line 285
    .line 286
    if-nez v0, :cond_5

    .line 287
    .line 288
    new-instance v0, Lw3/a;

    .line 289
    .line 290
    invoke-direct {v0}, Lw3/a;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->n()Lcom/android/calendar/common/event/schema/Event;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Lcom/android/calendar/common/event/schema/TravelEvent;

    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    iput-boolean v3, v0, Lw3/a;->h:Z

    .line 304
    .line 305
    const v3, 0x7f1204a3

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    iput-object v3, v0, Lw3/b;->b:Ljava/lang/String;

    .line 313
    .line 314
    iput-wide v1, v0, Lw3/b;->f:J

    .line 315
    .line 316
    new-instance v1, Lcom/android/calendar/event/v2/sms/u;

    .line 317
    .line 318
    invoke-direct {v1, p0}, Lcom/android/calendar/event/v2/sms/u;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;)V

    .line 319
    .line 320
    .line 321
    iput-object v1, v0, Lw3/a;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 322
    .line 323
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    :cond_5
    return-void
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

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/TravelEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->onEventLoad(Lcom/android/calendar/common/event/schema/TravelEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/calendar/common/event/schema/TravelEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->onEventLoad(Lcom/android/calendar/common/event/schema/TravelEvent;)V

    return-void
.end method

.method protected onEventLoad(Lcom/android/calendar/common/event/schema/TravelEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/calendar/event/travel/a;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->D:Z

    .line 4
    instance-of v0, p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->z:Lcom/android/calendar/common/event/schema/FlightSchema;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->z:Lcom/android/calendar/common/event/schema/FlightSchema;

    invoke-static {v0, p1}, Lcom/miui/calendar/event/travel/a;->f(ILcom/android/calendar/common/event/schema/FlightSchema;)I

    move-result p1

    iput p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->E:I

    .line 7
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->z:Lcom/android/calendar/common/event/schema/FlightSchema;

    invoke-static {v0, p1}, Lcom/miui/calendar/event/travel/a;->e(ILcom/android/calendar/common/event/schema/FlightSchema;)I

    move-result p1

    iput p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->F:I

    .line 8
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->r0()V

    .line 9
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->q0()V

    .line 10
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->D0()V

    return-void
.end method
