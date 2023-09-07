.class public Lcom/miui/calendar/alerts/entities/AgendaAlert;
.super Lcom/miui/calendar/alerts/entities/BaseAlert;
.source "AgendaAlert.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/calendar/alerts/entities/BaseAlert<",
        "Lcom/android/calendar/common/event/schema/AgendaEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_EMAIL:Ljava/lang/String; = "com.android.exchange"

.field private static final ACCOUNT_TYPE_XIAOMI:Ljava/lang/String; = "com.xiaomi"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/calendar/alerts/entities/AgendaAlert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/alerts/entities/AgendaAlert$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/alerts/entities/AgendaAlert$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/miui/calendar/alerts/entities/AgendaAlert;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/calendar/alerts/entities/AgendaAlert$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/alerts/entities/AgendaAlert;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getAdapter(Landroid/content/Context;I)Ln3/a;
    .locals 1

    .line 2
    new-instance v0, Ln3/a;

    invoke-direct {v0, p1, p0}, Ln3/a;-><init>(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/AgendaAlert;)V

    .line 3
    invoke-virtual {v0, p2}, Ln3/c;->n(I)V

    return-object v0
.end method

.method public bridge synthetic getAdapter(Landroid/content/Context;I)Ln3/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/alerts/entities/AgendaAlert;->getAdapter(Landroid/content/Context;I)Ln3/a;

    move-result-object p1

    return-object p1
.end method

.method public getRemindType()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/16 v2, 0xf

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v2, 0x10

    .line 24
    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    const/4 v0, 0x1

    .line 29
    return v0
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

.method public loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/BaseAlert;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/miui/calendar/alerts/entities/BaseAlert<",
            "Lcom/android/calendar/common/event/schema/AgendaEvent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo3/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lo3/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertId()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lo3/c;->c(I)Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public needPopup(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "agenda_default"

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    move-object v0, v1

    .line 16
    goto :goto_2

    .line 17
    :pswitch_0
    const-string v0, "sms_movie"

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :pswitch_1
    const-string v0, "sms_loan"

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :pswitch_2
    const-string v0, "sms_hotel"

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :pswitch_3
    const-string v0, "sms_gas"

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :pswitch_4
    const-string v0, "sms_electricity"

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :pswitch_5
    const-string v0, "sms_train"

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :pswitch_6
    const-string v0, "sms_flight"

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const-string v0, "sms_credit"

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAccountType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "LOCAL"

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAccountType()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "com.xiaomi"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAccountName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/miui/calendar/util/k0;->a(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAccountType()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v2, "com.android.exchange"

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const-string v0, "agenda_non_email"

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    :goto_1
    const-string v0, "agenda_email"

    .line 93
    .line 94
    :goto_2
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->isAllDay()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    const-string v0, "agenda_default_fullday"

    .line 107
    .line 108
    :cond_6
    invoke-static {p1, v0}, Lo1/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    return p1

    .line 113
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
