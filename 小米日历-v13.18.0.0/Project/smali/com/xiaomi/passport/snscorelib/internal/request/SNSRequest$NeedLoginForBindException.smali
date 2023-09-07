.class public Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;
.super Ljava/lang/Exception;
.source "SNSRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeedLoginForBindException"
.end annotation


# instance fields
.field private final mSNSBindParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;->mSNSBindParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

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


# virtual methods
.method public getSNSBindParameter()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;->mSNSBindParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

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
