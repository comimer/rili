.class public final synthetic Lcom/miui/calendar/sync/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/NewEventImportActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/NewEventImportActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/q;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    iput-object p2, p0, Lcom/miui/calendar/sync/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/calendar/sync/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/calendar/sync/q;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/calendar/sync/q;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    iget-object v1, p0, Lcom/miui/calendar/sync/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/calendar/sync/q;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/calendar/sync/q;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/calendar/sync/NewEventImportActivity$e;->d(Lcom/miui/calendar/sync/NewEventImportActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
