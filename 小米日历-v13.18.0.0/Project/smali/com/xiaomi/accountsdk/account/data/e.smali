.class public Lcom/xiaomi/accountsdk/account/data/e;
.super Ljava/lang/Object;
.source "SendPhoneTicketParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/e$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/e$b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->a(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->b(Lcom/xiaomi/accountsdk/account/data/e$b;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/xiaomi/accountsdk/account/data/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/e;->c:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->d(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->e(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->f(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->g:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->g(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->h:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->h(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->i:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->i(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->j:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->j(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->k:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->k(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/e;->l:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/e$b;->c(Lcom/xiaomi/accountsdk/account/data/e$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/e;->m:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/e$b;Lcom/xiaomi/accountsdk/account/data/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/e;-><init>(Lcom/xiaomi/accountsdk/account/data/e$b;)V

    return-void
.end method
