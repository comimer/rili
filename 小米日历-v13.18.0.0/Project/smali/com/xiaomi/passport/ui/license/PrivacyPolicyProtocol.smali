.class public Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol;
.super Ljava/lang/Object;
.source "PrivacyPolicyProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationCallFrequentException;,
        Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$PrivacyReportInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;,
            Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationCallFrequentException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$PrivacyReportInfo;->policyName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$PrivacyReportInfo;->idContent:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$PrivacyReportInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$PrivacyReportInfo;->apkVersionName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0, v0, v1, v2, p1}, Lcom/miui/privacypolicy/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol;->b(I)V

    .line 14
    .line 15
    .line 16
    return-void
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

.method private static b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;,
            Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationCallFrequentException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq v0, p0, :cond_1

    .line 3
    .line 4
    const/4 v0, -0x7

    .line 5
    if-eq v0, p0, :cond_1

    .line 6
    .line 7
    const/4 v0, -0x6

    .line 8
    if-ne v0, p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol;->c(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
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

.method private static c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;,
            Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationCallFrequentException;
        }
    .end annotation

    .line 1
    const/4 v0, -0x5

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, -0x4

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, -0x3

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, -0x2

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;

    .line 17
    .line 18
    const-string v1, "UNKNOWN_FAILED_REASON"

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;

    .line 25
    .line 26
    const-string v1, "ERROR_NO_NETWORK"

    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    new-instance v0, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;

    .line 33
    .line 34
    const-string v1, "ERROR_SERVICE_NOT_RESPONSE"

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_2
    new-instance v0, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;

    .line 41
    .line 42
    const-string v1, "ERROR_PARESE_SERVICE_DATA"

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_3
    new-instance v0, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;

    .line 49
    .line 50
    const-string v1, "ERROR_INTERNATIONAL_REGION"

    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationFailedException;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_4
    new-instance p0, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationCallFrequentException;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/license/PrivacyPolicyProtocol$OperationCallFrequentException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0
    .line 62
    .line 63
    .line 64
    .line 65
.end method
