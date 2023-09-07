.class public final synthetic Lcom/miui/calendar/sync/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/NewEventImportActivity;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/NewEventImportActivity;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/i;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    iput-object p2, p0, Lcom/miui/calendar/sync/i;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/sync/i;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    iget-object v1, p0, Lcom/miui/calendar/sync/i;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/sync/NewEventImportActivity;->f0(Lcom/miui/calendar/sync/NewEventImportActivity;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
