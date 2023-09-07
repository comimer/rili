.class public final synthetic Lcom/miui/calendar/sync/ics/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/ics/c;->a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/sync/ics/c;->a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    invoke-static {v0, p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->l0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/view/View;)V

    return-void
.end method
