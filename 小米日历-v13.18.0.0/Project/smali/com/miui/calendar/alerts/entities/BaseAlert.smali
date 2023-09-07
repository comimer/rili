.class public abstract Lcom/miui/calendar/alerts/entities/BaseAlert;
.super Ljava/lang/Object;
.source "BaseAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/alerts/entities/BaseAlert$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/calendar/common/event/schema/Event;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_ALERT:Ljava/lang/String; = "extra_key_alert"

.field private static final ID_MASK:J = 0xffL

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "KEY_ALERT_ACCOUNT_NAME"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "KEY_ALERT_ACCOUNT_TYPE"

.field private static final KEY_ALERT_AT:Ljava/lang/String; = "KEY_ALERT_ALERT_AT"

.field private static final KEY_ALERT_ID:Ljava/lang/String; = "KEY_ALERT_ALERT_ID"

.field private static final KEY_BEGIN_AT:Ljava/lang/String; = "KEY_ALERT_BEGIN_AT"

.field private static final KEY_CALENDAR_DISPLAY_NAME:Ljava/lang/String; = "KEY_ALERT_CALENDAR_DISPLAY_NAME"

.field private static final KEY_COLOR:Ljava/lang/String; = "KEY_ALERT_COLOR"

.field private static final KEY_CUSTOM_APP_PACKAGE:Ljava/lang/String; = "KEY_ALERT_CUSTOM_APP_PACKAGE"

.field private static final KEY_END_AT:Ljava/lang/String; = "KEY_ALERT_END_AT"

.field private static final KEY_EVENT_DESCRIPTION:Ljava/lang/String; = "KEY_ALERT_EVENT_DESCRIPTION"

.field private static final KEY_EVENT_ID:Ljava/lang/String; = "KEY_ALERT_EVENT_ID"

.field private static final KEY_EVENT_LOCATION:Ljava/lang/String; = "KEY_ALERT_EVENT_LOCATION"

.field private static final KEY_EVENT_STATE:Ljava/lang/String; = "KEY_ALERT_EVENT_STATE"

.field private static final KEY_EVENT_TITLE:Ljava/lang/String; = "KEY_ALERT_EVENT_TITLE"

.field private static final KEY_EVENT_TYPE:Ljava/lang/String; = "KEY_ALERT_EVENT_TYPE"

.field private static final KEY_HAS_ALARM:Ljava/lang/String; = "KEY_HAS_ALARM"

.field private static final KEY_IS_ALL_DAY:Ljava/lang/String; = "KEY_ALERT_IS_ALL_DAY"

.field private static final KEY_REMIND_MINUTES:Ljava/lang/String; = "KEY_ALERT_REMIND_MINUTES"

.field private static final KEY_RRULE:Ljava/lang/String; = "KEY_ALERT_RRULE"

.field private static final KEY_SELF_ATTENDEE_STATUS:Ljava/lang/String; = "KEY_ALERT_SELF_ATTENDEE_STATUS"

.field private static final TAG:Ljava/lang/String; = "Cal:D:BaseAlert"

.field public static final TYPE_AGENDA_DEFAULT:Ljava/lang/String; = "agenda_default"

.field public static final TYPE_AGENDA_DEFAULT_FULLDAY:Ljava/lang/String; = "agenda_default_fullday"

.field public static final TYPE_AGENDA_MAIL:Ljava/lang/String; = "agenda_email"

.field public static final TYPE_AGENDA_OTHER:Ljava/lang/String; = "agenda_non_email"

.field public static final TYPE_ANNIVERSARY:Ljava/lang/String; = "anniversary"

.field public static final TYPE_BIRTHDAY_CONTACTS:Ljava/lang/String; = "birthday_contacts"

.field public static final TYPE_BIRTHDAY_MANUAL:Ljava/lang/String; = "birthday_manual"

.field public static final TYPE_COUNTDOWN:Ljava/lang/String; = "countdown"

.field public static final TYPE_SMS_CREDIT:Ljava/lang/String; = "sms_credit"

.field public static final TYPE_SMS_ELECTRICITY:Ljava/lang/String; = "sms_electricity"

.field public static final TYPE_SMS_FLIGHT:Ljava/lang/String; = "sms_flight"

.field public static final TYPE_SMS_GAS:Ljava/lang/String; = "sms_gas"

.field public static final TYPE_SMS_HOTEL:Ljava/lang/String; = "sms_hotel"

.field public static final TYPE_SMS_LOAN:Ljava/lang/String; = "sms_loan"

.field public static final TYPE_SMS_MOVIE:Ljava/lang/String; = "sms_movie"

.field public static final TYPE_SMS_TRAIN:Ljava/lang/String; = "sms_train"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAlertAt:J

.field private mAlertId:I

.field private mBeginAt:J

.field private mCalendarDisplayName:Ljava/lang/String;

.field private mColor:I

.field private mCustomAppPackage:Ljava/lang/String;

.field private mEndAt:J

.field protected mEvent:Lcom/android/calendar/common/event/schema/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mEventDescription:Ljava/lang/String;

.field private mEventId:J

.field private mEventLocation:Ljava/lang/String;

.field private mEventState:I

.field private mEventTitle:Ljava/lang/String;

.field private mEventType:I

.field private mHasAlarm:Z

.field private mIsAllDay:Z

.field private mNeedAlarm:Ljava/lang/Boolean;

.field private mRemindMinutes:I

.field private mRrule:Ljava/lang/String;

.field private mSelfAttendeeStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mNeedAlarm:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mNeedAlarm:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mColor:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mSelfAttendeeStatus:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/miui/calendar/alerts/entities/BaseAlert;
    .locals 6

    .line 1
    const-string v0, "KEY_ALERT_EVENT_TYPE"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x7

    .line 8
    if-eq v1, v2, :cond_2

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/miui/calendar/alerts/entities/AgendaAlert;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/miui/calendar/alerts/entities/AgendaAlert;-><init>()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;-><init>()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;-><init>()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance v1, Lcom/miui/calendar/alerts/entities/BirthdayAlert;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/miui/calendar/alerts/entities/BirthdayAlert;-><init>()V

    .line 39
    .line 40
    .line 41
    :goto_0
    const-string v2, "KEY_ALERT_ALERT_ID"

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    .line 48
    .line 49
    const-string v2, "KEY_ALERT_EVENT_ID"

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 56
    .line 57
    const-string v2, "KEY_ALERT_EVENT_LOCATION"

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 64
    .line 65
    const-string v2, "KEY_ALERT_EVENT_TITLE"

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

    .line 72
    .line 73
    const-string v2, "KEY_ALERT_EVENT_DESCRIPTION"

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 86
    .line 87
    const-string v0, "KEY_ALERT_IS_ALL_DAY"

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v2, 0x1

    .line 94
    const/4 v3, 0x0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    move v0, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v0, v3

    .line 100
    :goto_1
    iput-boolean v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 101
    .line 102
    const-string v0, "KEY_ALERT_BEGIN_AT"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    iput-wide v4, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 109
    .line 110
    const-string v0, "KEY_ALERT_END_AT"

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    iput-wide v4, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 117
    .line 118
    const-string v0, "KEY_ALERT_ACCOUNT_NAME"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

    .line 125
    .line 126
    const-string v0, "KEY_ALERT_ACCOUNT_TYPE"

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

    .line 133
    .line 134
    const-string v0, "KEY_ALERT_CALENDAR_DISPLAY_NAME"

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

    .line 141
    .line 142
    const-string v0, "KEY_ALERT_COLOR"

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mColor:I

    .line 149
    .line 150
    const-string v0, "KEY_ALERT_RRULE"

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "KEY_ALERT_CUSTOM_APP_PACKAGE"

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

    .line 165
    .line 166
    const-string v0, "KEY_ALERT_SELF_ATTENDEE_STATUS"

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iput v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mSelfAttendeeStatus:I

    .line 173
    .line 174
    const-string v0, "KEY_ALERT_EVENT_STATE"

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iput v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

    .line 181
    .line 182
    const-string v0, "KEY_ALERT_REMIND_MINUTES"

    .line 183
    .line 184
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iput v0, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

    .line 189
    .line 190
    const-string v0, "KEY_ALERT_ALERT_AT"

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v4

    .line 196
    iput-wide v4, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

    .line 197
    .line 198
    const-string v0, "KEY_HAS_ALARM"

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-eqz p0, :cond_4

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_4
    move v2, v3

    .line 208
    :goto_2
    iput-boolean v2, v1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    return-object v1

    .line 211
    :catch_0
    move-exception p0

    .line 212
    const-string v0, "Cal:D:BaseAlert"

    .line 213
    .line 214
    const-string v1, "fromBundle error"

    .line 215
    .line 216
    invoke-static {v0, v1, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    const/4 p0, 0x0

    .line 220
    return-object p0
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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public edit()Lcom/miui/calendar/alerts/entities/BaseAlert$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/calendar/alerts/entities/BaseAlert$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/calendar/alerts/entities/BaseAlert$b;-><init>(Lcom/miui/calendar/alerts/entities/BaseAlert;Lcom/miui/calendar/alerts/entities/BaseAlert$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
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

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

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

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

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

.method public abstract getAdapter(Landroid/content/Context;I)Ln3/c;
.end method

.method public getAlertAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

    .line 2
    .line 3
    return-wide v0
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

.method public getAlertId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

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

.method public getBeginAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 2
    .line 3
    return-wide v0
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

.method public getCalendarDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

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

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mColor:I

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

.method public getContentIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 5

    .line 1
    const-string v0, "Cal:D:BaseAlert"

    .line 2
    .line 3
    const-string v1, "getContentIntent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v2, Lcom/android/calendar/alerts/NotificationMiddleActivity;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 19
    .line 20
    const-string v4, "eventid"

    .line 21
    .line 22
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-wide v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 26
    .line 27
    const-string v4, "eventstart"

    .line 28
    .line 29
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-wide v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 33
    .line 34
    const-string v4, "eventend"

    .line 35
    .line 36
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v2, "showevent"

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 46
    .line 47
    const-string v3, "hasEP"

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const-string v3, "notificationid"

    .line 57
    .line 58
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const-string v2, "dismissevent"

    .line 62
    .line 63
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string p2, "updatealertnotification"

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    const-string p2, "extra_key_alert"

    .line 73
    .line 74
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    sget-object p2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iget-wide v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 84
    .line 85
    invoke-static {p2, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 86
    .line 87
    .line 88
    iget-wide v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 89
    .line 90
    invoke-static {p2, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string p2, "com.android.calendar.CLICK"

    .line 101
    .line 102
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "createDismissAlarmsIntent(): intent:"

    .line 111
    .line 112
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {v0, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/high16 p2, 0xc000000

    .line 126
    .line 127
    invoke-static {p1, v2, v1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1
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

.method public getCustomAppPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

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

.method public getDeleteIntent(Landroid/content/Context;ZZ)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    const-string v0, "Cal:D:BaseAlert"

    .line 2
    .line 3
    const-string v1, "getDeleteIntent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v2, Lcom/android/calendar/alerts/DismissAlarmsService;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 19
    .line 20
    const-string v4, "eventid"

    .line 21
    .line 22
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-wide v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 26
    .line 27
    const-string v4, "eventstart"

    .line 28
    .line 29
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-wide v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 33
    .line 34
    const-string v4, "eventend"

    .line 35
    .line 36
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v2, "showevent"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 46
    .line 47
    const-string v4, "hasEP"

    .line 48
    .line 49
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const-string v4, "notificationid"

    .line 57
    .line 58
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const-string v2, "dismissevent"

    .line 62
    .line 63
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string p2, "updatealertnotification"

    .line 67
    .line 68
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string p2, "extra_key_alert"

    .line 72
    .line 73
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    sget-object p2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iget-wide v4, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 83
    .line 84
    invoke-static {p2, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 85
    .line 86
    .line 87
    iget-wide v4, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 88
    .line 89
    invoke-static {p2, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    const-string p2, "com.android.calendar.DELETE"

    .line 100
    .line 101
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string p3, "createDismissAlarmsIntent(): intent:"

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {v0, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/high16 p2, 0xc000000

    .line 125
    .line 126
    invoke-static {p1, v3, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
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

.method public getEndAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 2
    .line 3
    return-wide v0
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

.method public getEventDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

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

.method public getEventId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 2
    .line 3
    return-wide v0
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

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

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

.method public getEventState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

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

.method public getEventTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

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

.method public getEventType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

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

.method public getFullscreenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    const-string v0, "Cal:D:BaseAlert"

    .line 2
    .line 3
    const-string v1, "getFullscreenIntent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v1, Lcom/android/calendar/alerts/AlertActivity;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "calendar://"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->isNeedAlarm(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const-string v2, "miui.intent.extra_calendar_reminder_alarm_alert"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    const-string v2, "miui.intent.extra_calendar_reminder_screen_on"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const/high16 v1, 0x10000000

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string v1, "extra_key_alert"

    .line 66
    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    const/high16 v2, 0x4c000000    # 3.3554432E7f

    .line 72
    .line 73
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
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

.method public getNotificationId()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    const-wide/16 v2, 0xff

    .line 13
    .line 14
    and-long/2addr v0, v2

    .line 15
    :cond_0
    long-to-int v0, v0

    .line 16
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getRemindMinutes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

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

.method public abstract getRemindType()I
.end method

.method public getRrule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

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

.method public getSelfAttendeeStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mSelfAttendeeStatus:I

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

.method public getSummaryText(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/miui/calendar/util/r0;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->M()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->l()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-static {v3, v4, v5, v6}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-wide v4, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 27
    .line 28
    invoke-virtual {v1, v4, v5}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->l()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-static {v4, v5, v6, v7}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget-boolean v5, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 44
    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    const v5, 0x80001

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    const v5, 0x80081

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const v5, 0x82000

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    if-lt v4, v3, :cond_2

    .line 64
    .line 65
    add-int/lit8 v6, v3, 0x1

    .line 66
    .line 67
    if-le v4, v6, :cond_3

    .line 68
    .line 69
    :cond_2
    or-int/lit8 v5, v5, 0x10

    .line 70
    .line 71
    :cond_3
    move v11, v5

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    iget-wide v9, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 75
    .line 76
    move-object v6, p1

    .line 77
    move-wide v7, v9

    .line 78
    invoke-static/range {v6 .. v11}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-boolean v6, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 86
    .line 87
    const/4 v7, 0x1

    .line 88
    if-nez v6, :cond_5

    .line 89
    .line 90
    invoke-static {}, Lcom/miui/calendar/util/r0;->j()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_5

    .line 99
    .line 100
    iget-wide v8, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 101
    .line 102
    invoke-virtual {v1, v8, v9}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->k()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    move v1, v7

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    move v1, v2

    .line 114
    :goto_1
    const-string v6, " "

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v0, v1, v2, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_5
    add-int/2addr v3, v7

    .line 135
    const-string v0, ", "

    .line 136
    .line 137
    if-ne v4, v3, :cond_6

    .line 138
    .line 139
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const v1, 0x7f12066b

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_7

    .line 165
    .line 166
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    return-object p1
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

.method public hasAlarm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z

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

.method public hasChanged(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne p1, p0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    iget v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    .line 14
    .line 15
    iget v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    .line 16
    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    iget-wide v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 21
    .line 22
    iget-wide v4, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    return v0

    .line 29
    :cond_3
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v2, :cond_4

    .line 32
    .line 33
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    return v0

    .line 38
    :cond_4
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_5

    .line 45
    .line 46
    return v0

    .line 47
    :cond_5
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v2, :cond_6

    .line 50
    .line 51
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v2, :cond_7

    .line 54
    .line 55
    return v0

    .line 56
    :cond_6
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_7

    .line 63
    .line 64
    return v0

    .line 65
    :cond_7
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v2, :cond_8

    .line 68
    .line 69
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v2, :cond_9

    .line 72
    .line 73
    return v0

    .line 74
    :cond_8
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_9

    .line 81
    .line 82
    return v0

    .line 83
    :cond_9
    iget-wide v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 84
    .line 85
    iget-wide v4, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 86
    .line 87
    cmp-long v2, v2, v4

    .line 88
    .line 89
    if-eqz v2, :cond_a

    .line 90
    .line 91
    return v0

    .line 92
    :cond_a
    iget-wide v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 93
    .line 94
    iget-wide v4, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 95
    .line 96
    cmp-long v2, v2, v4

    .line 97
    .line 98
    if-eqz v2, :cond_b

    .line 99
    .line 100
    return v0

    .line 101
    :cond_b
    iget-boolean v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 102
    .line 103
    iget-boolean v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 104
    .line 105
    if-eq v2, v3, :cond_c

    .line 106
    .line 107
    return v0

    .line 108
    :cond_c
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

    .line 109
    .line 110
    if-nez v2, :cond_d

    .line 111
    .line 112
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v2, :cond_e

    .line 115
    .line 116
    return v0

    .line 117
    :cond_d
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_e

    .line 124
    .line 125
    return v0

    .line 126
    :cond_e
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

    .line 127
    .line 128
    if-nez v2, :cond_f

    .line 129
    .line 130
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v2, :cond_10

    .line 133
    .line 134
    return v0

    .line 135
    :cond_f
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_10

    .line 142
    .line 143
    return v0

    .line 144
    :cond_10
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_11

    .line 147
    .line 148
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v2, :cond_12

    .line 151
    .line 152
    return v0

    .line 153
    :cond_11
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_12

    .line 160
    .line 161
    return v0

    .line 162
    :cond_12
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

    .line 163
    .line 164
    if-nez v2, :cond_13

    .line 165
    .line 166
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

    .line 167
    .line 168
    if-eqz v2, :cond_14

    .line 169
    .line 170
    return v0

    .line 171
    :cond_13
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-nez v2, :cond_14

    .line 178
    .line 179
    return v0

    .line 180
    :cond_14
    iget-object v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

    .line 181
    .line 182
    if-nez v2, :cond_15

    .line 183
    .line 184
    iget-object v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v2, :cond_16

    .line 187
    .line 188
    return v0

    .line 189
    :cond_15
    iget-object v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_16

    .line 196
    .line 197
    return v0

    .line 198
    :cond_16
    iget v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 199
    .line 200
    iget v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 201
    .line 202
    if-eq v2, v3, :cond_17

    .line 203
    .line 204
    return v0

    .line 205
    :cond_17
    iget v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

    .line 206
    .line 207
    iget v3, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

    .line 208
    .line 209
    if-eq v2, v3, :cond_18

    .line 210
    .line 211
    return v0

    .line 212
    :cond_18
    iget-wide v2, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

    .line 213
    .line 214
    iget-wide v4, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

    .line 215
    .line 216
    cmp-long v2, v2, v4

    .line 217
    .line 218
    if-eqz v2, :cond_19

    .line 219
    .line 220
    return v0

    .line 221
    :cond_19
    iget-boolean p1, p1, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z

    .line 222
    .line 223
    iget-boolean v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z

    .line 224
    .line 225
    if-eq p1, v2, :cond_1a

    .line 226
    .line 227
    return v0

    .line 228
    :cond_1a
    return v1
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

.method public hasFired()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
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

.method public isAllDay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

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

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isDeclined()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mSelfAttendeeStatus:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
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

.method public isNeedAlarm(Landroid/content/Context;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mNeedAlarm:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 6
    .line 7
    iget v2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 8
    .line 9
    invoke-static {v2}, Ls1/d;->b(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p1, v0, v1, v2}, Ls1/d;->h(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "need_alarm"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mNeedAlarm:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string v0, "Cal:D:BaseAlert"

    .line 37
    .line 38
    const-string v1, "isNeedAlarm error"

    .line 39
    .line 40
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mNeedAlarm:Ljava/lang/Boolean;

    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mNeedAlarm:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
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

.method public isNew()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method public abstract loadAnotherOne(Landroid/content/Context;)Lcom/miui/calendar/alerts/entities/BaseAlert;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/miui/calendar/alerts/entities/BaseAlert<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract needPopup(Landroid/content/Context;)Z
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

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

.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

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

.method public setAlertAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

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

.method public setAlertId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

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

.method public setAllDay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

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

.method public setBeginAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

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

.method public setCalendarDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

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

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mColor:I

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

.method public setCustomAppPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

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

.method public setEndAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

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

.method public setEvent(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEvent:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public setEventDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

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

.method public setEventId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

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

.method public setEventLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

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

.method public setEventState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

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

.method public setEventTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

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

.method public setEventType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

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

.method public setHasAlarm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z

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

.method public setNew()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

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

.method public setRemindMinutes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

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

.method public setRrule(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

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

.method public setSelfAttendeeStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mSelfAttendeeStatus:I

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

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    .line 7
    .line 8
    const-string v2, "KEY_ALERT_ALERT_ID"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    iget-wide v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 14
    .line 15
    const-string v3, "KEY_ALERT_EVENT_ID"

    .line 16
    .line 17
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "KEY_ALERT_EVENT_LOCATION"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "KEY_ALERT_EVENT_TITLE"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "KEY_ALERT_EVENT_DESCRIPTION"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 42
    .line 43
    const-string v2, "KEY_ALERT_EVENT_TYPE"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 49
    .line 50
    const-string v2, "KEY_ALERT_IS_ALL_DAY"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    iget-wide v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 56
    .line 57
    const-string v3, "KEY_ALERT_BEGIN_AT"

    .line 58
    .line 59
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    iget-wide v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 63
    .line 64
    const-string v3, "KEY_ALERT_END_AT"

    .line 65
    .line 66
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

    .line 70
    .line 71
    const-string v2, "KEY_ALERT_ACCOUNT_NAME"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

    .line 77
    .line 78
    const-string v2, "KEY_ALERT_ACCOUNT_TYPE"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

    .line 84
    .line 85
    const-string v2, "KEY_ALERT_CALENDAR_DISPLAY_NAME"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mColor:I

    .line 91
    .line 92
    const-string v2, "KEY_ALERT_COLOR"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "KEY_ALERT_RRULE"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

    .line 105
    .line 106
    const-string v2, "KEY_ALERT_CUSTOM_APP_PACKAGE"

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mSelfAttendeeStatus:I

    .line 112
    .line 113
    const-string v2, "KEY_ALERT_SELF_ATTENDEE_STATUS"

    .line 114
    .line 115
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

    .line 119
    .line 120
    const-string v2, "KEY_ALERT_EVENT_STATE"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

    .line 126
    .line 127
    const-string v2, "KEY_ALERT_REMIND_MINUTES"

    .line 128
    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    iget-wide v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

    .line 133
    .line 134
    const-string v3, "KEY_ALERT_ALERT_AT"

    .line 135
    .line 136
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    iget-boolean v1, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z

    .line 140
    .line 141
    const-string v2, "KEY_HAS_ALARM"

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    return-object v0
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventId:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventLocation:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventTitle:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventDescription:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventType:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mIsAllDay:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mBeginAt:J

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEndAt:J

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAccountType:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCalendarDisplayName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mColor:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRrule:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mCustomAppPackage:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mSelfAttendeeStatus:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mEventState:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mRemindMinutes:I

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    iget-wide v0, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mAlertAt:J

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    .line 95
    .line 96
    iget-boolean p2, p0, Lcom/miui/calendar/alerts/entities/BaseAlert;->mHasAlarm:Z

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    return-void
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
