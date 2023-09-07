.class public final synthetic Lcom/miui/calendar/sync/protocol/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/v;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/protocol/g;->a:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/g;->a:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity$mDataObserver$2;->a(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;Ljava/lang/String;)V

    return-void
.end method
