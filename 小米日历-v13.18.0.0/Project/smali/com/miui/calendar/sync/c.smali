.class public final synthetic Lcom/miui/calendar/sync/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/v;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/NewEventImportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/NewEventImportActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/c;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/sync/c;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    check-cast p1, Lcom/miui/calendar/sync/bean/DingAuthBean;

    invoke-static {v0, p1}, Lcom/miui/calendar/sync/NewEventImportActivity;->m0(Lcom/miui/calendar/sync/NewEventImportActivity;Lcom/miui/calendar/sync/bean/DingAuthBean;)V

    return-void
.end method
