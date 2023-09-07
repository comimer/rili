.class public Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;
.super Ljava/lang/Object;
.source "XmAccountVisibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/accounts/Account;

.field private e:I

.field private f:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->e:I

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p2, p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->errorMsg:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->b:Ljava/lang/String;

    .line 19
    .line 20
    return-void
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

.method static synthetic a(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

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

.method static synthetic b(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->b:Ljava/lang/String;

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

.method static synthetic c(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->c:Z

    .line 2
    .line 3
    return p0
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

.method static synthetic d(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Landroid/accounts/Account;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->d:Landroid/accounts/Account;

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

.method static synthetic e(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->e:I

    .line 2
    .line 3
    return p0
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

.method static synthetic f(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->f:Landroid/content/Intent;

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


# virtual methods
.method public g(ZLandroid/accounts/Account;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->c:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->d:Landroid/accounts/Account;

    .line 4
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

.method public h()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;)V

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

.method public i(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$b;->f:Landroid/content/Intent;

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
