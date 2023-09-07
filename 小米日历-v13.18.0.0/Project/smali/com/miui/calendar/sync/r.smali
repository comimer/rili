.class public final synthetic Lcom/miui/calendar/sync/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/NewEventImportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/NewEventImportActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/r;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/sync/r;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    invoke-static {v0}, Lcom/miui/calendar/sync/NewEventImportActivity$e;->e(Lcom/miui/calendar/sync/NewEventImportActivity;)V

    return-void
.end method
