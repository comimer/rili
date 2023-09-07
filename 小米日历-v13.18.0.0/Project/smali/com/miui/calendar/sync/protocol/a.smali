.class public final synthetic Lcom/miui/calendar/sync/protocol/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/protocol/a;->a:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/sync/protocol/a;->a:Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;

    invoke-static {v0}, Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;->b0(Lcom/miui/calendar/sync/protocol/CalDavLoginActivity;)V

    return-void
.end method
