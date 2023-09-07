.class public Lcom/android/calendar/common/event/schema/LoanEvent;
.super Lcom/android/calendar/common/event/schema/SmsEvent;
.source "LoanEvent.java"


# static fields
.field public static final JSON_KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final JSON_KEY_AMOUNT:Ljava/lang/String; = "amount"

.field public static final JSON_KEY_BANK_NAME:Ljava/lang/String; = "bankName"

.field public static final JSON_KEY_CURRENCY:Ljava/lang/String; = "currency"

.field public static final JSON_KEY_PLATFORM:Ljava/lang/String; = "platform"

.field public static final JSON_KEY_REPAYMENT_DATE:Ljava/lang/String; = "repaymentDate"

.field public static final JSON_KEY_REPAYMENT_TIME_MILLIS:Ljava/lang/String; = "repaymentTimeMillis"

.field private static final TAG:Ljava/lang/String; = "Cal:D:LoanEvent"


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mAmount:Ljava/lang/String;

.field protected mBankName:Ljava/lang/String;

.field protected mCurrency:Ljava/lang/String;

.field protected mPlatform:Ljava/lang/String;

.field protected mRepaymentDate:Ljava/lang/String;

.field protected mRepaymentTimeMillis:J


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
    iput-wide v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentTimeMillis:J

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
    instance-of v1, p1, Lcom/android/calendar/common/event/schema/LoanEvent;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/android/calendar/common/event/schema/LoanEvent;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAccount:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getAccount()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mCurrency:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getCurrency()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAmount:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getAmount()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mBankName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getBankName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentTimeMillis:J

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getRepaymentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    cmp-long p1, v1, v3

    .line 65
    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
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

.method public fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/SmsEvent;->fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "account"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAccount:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "currency"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mCurrency:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "amount"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAmount:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "repaymentDate"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentDate:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "bankName"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mBankName:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "platform"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mPlatform:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "repaymentTimeMillis"

    .line 53
    .line 54
    const-wide/16 v1, -0x1

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iput-wide v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentTimeMillis:J

    .line 61
    .line 62
    return-void
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
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAccount:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "account"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mCurrency:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "currency"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAmount:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "amount"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentDate:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "repaymentDate"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mBankName:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "bankName"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mPlatform:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "platform"

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentTimeMillis:J

    .line 47
    .line 48
    const-string v2, "repaymentTimeMillis"

    .line 49
    .line 50
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    return-void
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
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAccount:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAmount:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mBankName:Ljava/lang/String;

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

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mCurrency:Ljava/lang/String;

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

    const-string v0, "loan_info"

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mPlatform:Ljava/lang/String;

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

.method public getRepaymentDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentDate:Ljava/lang/String;

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

.method public getRepaymentTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentTimeMillis:J

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
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAccount:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mAmount:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mBankName:Ljava/lang/String;

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

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mCurrency:Ljava/lang/String;

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

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mPlatform:Ljava/lang/String;

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

.method public setRepaymentDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentDate:Ljava/lang/String;

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

.method public setRepaymentTimeMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/common/event/schema/LoanEvent;->mRepaymentTimeMillis:J

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
