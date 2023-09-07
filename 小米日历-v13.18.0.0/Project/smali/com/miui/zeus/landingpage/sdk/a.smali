.class public Lcom/miui/zeus/landingpage/sdk/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lcom/miui/zeus/landingpage/sdk/a;


# instance fields
.field public a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/zeus/landingpage/sdk/a$a;

    invoke-direct {v0, p0}, Lcom/miui/zeus/landingpage/sdk/a$a;-><init>(Lcom/miui/zeus/landingpage/sdk/a;)V

    iput-object v0, p0, Lcom/miui/zeus/landingpage/sdk/a;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method
