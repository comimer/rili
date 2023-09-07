.class public final Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dingtalk/openauth/AuthLoginParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthLoginParamBuilder"
.end annotation


# instance fields
.field private mAltSignature:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mPrompt:Ljava/lang/String;

.field private mRedirectUri:Ljava/lang/String;

.field private mResponseType:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mAppId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mRedirectUri:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mState:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mNonce:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mScope:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mResponseType:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mPrompt:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mAltSignature:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public static newBuilder()Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
.method public altSignature(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mAltSignature:Ljava/lang/String;

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

.method public appId(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mAppId:Ljava/lang/String;

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

.method public build()Lcom/android/dingtalk/openauth/AuthLoginParam;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dingtalk/openauth/AuthLoginParam;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/dingtalk/openauth/AuthLoginParam;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mState:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$002(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mNonce:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$102(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mRedirectUri:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$202(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mAppId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$302(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mScope:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$402(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mResponseType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$502(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mPrompt:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$602(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mAltSignature:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/android/dingtalk/openauth/AuthLoginParam;->access$702(Lcom/android/dingtalk/openauth/AuthLoginParam;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    return-object v0
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

.method public nonce(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mNonce:Ljava/lang/String;

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

.method public prompt(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mPrompt:Ljava/lang/String;

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

.method public redirectUri(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mRedirectUri:Ljava/lang/String;

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

.method public responseType(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mResponseType:Ljava/lang/String;

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

.method public scope(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mScope:Ljava/lang/String;

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

.method public state(Ljava/lang/String;)Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/dingtalk/openauth/AuthLoginParam$AuthLoginParamBuilder;->mState:Ljava/lang/String;

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
