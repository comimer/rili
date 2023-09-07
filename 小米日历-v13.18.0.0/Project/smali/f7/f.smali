.class public Lf7/f;
.super Lf7/c;
.source "UrlConnHttpFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/f$b;
    }
.end annotation


# static fields
.field private static c:Ljava/net/CookieManager;


# instance fields
.field private a:Lh7/b;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/net/CookieManager;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf7/f;->c:Ljava/net/CookieManager;

    .line 7
    .line 8
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    .line 11
    .line 12
    .line 13
    return-void
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf7/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf7/f;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lh7/a;->i(Landroid/content/Context;)Lh7/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lf7/f;->a:Lh7/b;

    .line 11
    .line 12
    sget-object p1, Lf7/f;->c:Ljava/net/CookieManager;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic d(Lf7/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lf7/f;->b:Landroid/content/Context;

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

.method static synthetic e(Lf7/f;)Lh7/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf7/f;->a:Lh7/b;

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
.method public c(Lf7/b;)Lf7/a;
    .locals 2

    .line 1
    new-instance v0, Lf7/f$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lf7/f$b;-><init>(Lf7/f;Lf7/b;Lf7/f$a;)V

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
