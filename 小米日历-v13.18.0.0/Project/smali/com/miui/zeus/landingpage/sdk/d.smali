.class public Lcom/miui/zeus/landingpage/sdk/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/market/sdk/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/miui/zeus/landingpage/sdk/d;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/market/sdk/g;->b()Lcom/market/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/g;->a()Lcom/market/sdk/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/landingpage/sdk/d;->a:Lcom/market/sdk/b;

    return-void
.end method
