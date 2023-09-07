.class public Lcom/android/calendar/common/event/schema/CreditEvent;
.super Lcom/android/calendar/common/event/schema/SmsEvent;
.source "CreditEvent.java"


# static fields
.field private static final JSON_KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final JSON_KEY_AMOUNT:Ljava/lang/String; = "amount"

.field private static final JSON_KEY_BANK_NAME:Ljava/lang/String; = "bankName"

.field private static final JSON_KEY_REPAYMENT_TIME:Ljava/lang/String; = "repaymentTime"

.field private static final TAG:Ljava/lang/String; = "Cal:D:CreditEvent"


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mAmount:Ljava/lang/String;

.field protected mBankName:Ljava/lang/String;

.field protected mRepaymentTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/SmsEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mRepaymentTime:J

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v1, p1, Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAmount:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAmount()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mBankName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getBankName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAccount:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAccount()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    cmpl-float v1, v1, v2

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    iget-wide v1, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mRepaymentTime:J

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getRepaymentTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    cmp-long p1, v1, v3

    .line 59
    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    :catch_0
    :cond_0
    return v0
    .line 64
    .line 65
.end method

.method public fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/SmsEvent;->fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "bankName"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mBankName:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "repaymentTime"

    .line 13
    .line 14
    const-wide/16 v1, -0x1

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mRepaymentTime:J

    .line 21
    .line 22
    const-string v0, "account"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAccount:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "amount"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAmount:Ljava/lang/String;

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

.method fillJSONObject(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/SmsEvent;->fillJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mBankName:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "bankName"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mRepaymentTime:J

    .line 12
    .line 13
    const-string v2, "repaymentTime"

    .line 14
    .line 15
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAccount:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "account"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAmount:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "amount"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    return-void
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

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAccount:Ljava/lang/String;

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

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAmount:Ljava/lang/String;

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

.method public getBankName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mBankName:Ljava/lang/String;

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

.method public getEpName()Ljava/lang/String;
    .locals 1

    const-string v0, "credit_info"

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getRepaymentTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mRepaymentTime:J

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

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAccount:Ljava/lang/String;

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

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mAmount:Ljava/lang/String;

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

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mBankName:Ljava/lang/String;

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

.method public setRepaymentTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/common/event/schema/CreditEvent;->mRepaymentTime:J

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
