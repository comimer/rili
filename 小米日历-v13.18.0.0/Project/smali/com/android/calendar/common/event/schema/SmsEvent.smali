.class public abstract Lcom/android/calendar/common/event/schema/SmsEvent;
.super Lcom/android/calendar/common/event/schema/Event;
.source "SmsEvent.java"


# static fields
.field private static final JSON_KEY_BODY:Ljava/lang/String; = "body"

.field private static final JSON_KEY_EVENT_CREATE_TIME:Ljava/lang/String; = "event_create_time"


# instance fields
.field protected mBody:Ljava/lang/String;

.field protected mEventCreateTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/Event;-><init>()V

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


# virtual methods
.method public fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/Event;->fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "body"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mBody:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "event_create_time"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mEventCreateTimeMillis:J

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method fillJSONObject(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/Event;->fillJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mBody:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "body"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mEventCreateTimeMillis:J

    .line 12
    .line 13
    const-string v2, "event_create_time"

    .line 14
    .line 15
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mBody:Ljava/lang/String;

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

.method public getEventCreateTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mEventCreateTimeMillis:J

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

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mBody:Ljava/lang/String;

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

.method public setEventCreateTimeMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/common/event/schema/SmsEvent;->mEventCreateTimeMillis:J

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
