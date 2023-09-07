.class final Lcom/android/calendar/syncer/account/AccountAuthenticatorService$accountAuthenticator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountAuthenticatorService.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/account/AccountAuthenticatorService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lcom/android/calendar/syncer/account/AccountAuthenticatorService$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/android/calendar/syncer/account/AccountAuthenticatorService$a;",
        "invoke",
        "()Lcom/android/calendar/syncer/account/AccountAuthenticatorService$a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/syncer/account/AccountAuthenticatorService;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/account/AccountAuthenticatorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/account/AccountAuthenticatorService$accountAuthenticator$2;->this$0:Lcom/android/calendar/syncer/account/AccountAuthenticatorService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/calendar/syncer/account/AccountAuthenticatorService$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/syncer/account/AccountAuthenticatorService$a;

    iget-object v1, p0, Lcom/android/calendar/syncer/account/AccountAuthenticatorService$accountAuthenticator$2;->this$0:Lcom/android/calendar/syncer/account/AccountAuthenticatorService;

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/account/AccountAuthenticatorService$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/calendar/syncer/account/AccountAuthenticatorService$accountAuthenticator$2;->invoke()Lcom/android/calendar/syncer/account/AccountAuthenticatorService$a;

    move-result-object v0

    return-object v0
.end method
