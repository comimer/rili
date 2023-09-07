.class public final synthetic Lcom/miui/calendar/sync/ics/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

.field public final synthetic b:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/ics/f;->a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

    iput-object p2, p0, Lcom/miui/calendar/sync/ics/f;->b:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/sync/ics/f;->a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

    iget-object v1, p0, Lcom/miui/calendar/sync/ics/f;->b:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;->f(Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;Lcom/miui/calendar/sync/ics/IcsFileImportActivity$d;Landroid/view/View;)V

    return-void
.end method
