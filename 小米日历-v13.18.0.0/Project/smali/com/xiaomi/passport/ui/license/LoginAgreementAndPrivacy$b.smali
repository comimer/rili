.class public Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;
.super Ljava/lang/Object;
.source "LoginAgreementAndPrivacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$PrivacyReportInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->e:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->h:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->a:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public a()Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;
    .locals 11

    .line 1
    new-instance v10, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->a:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->e:Z

    .line 12
    .line 13
    iget-object v6, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->g:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$b;->h:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    move-object v0, v10

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;-><init>(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$a;)V

    .line 22
    .line 23
    .line 24
    return-object v10
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
