.class public final synthetic Lcom/miui/calendar/sync/ics/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

.field public final synthetic b:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/sync/ics/e;->a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

    iput-object p2, p0, Lcom/miui/calendar/sync/ics/e;->b:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/sync/ics/e;->a:Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;

    iget-object v1, p0, Lcom/miui/calendar/sync/ics/e;->b:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;->g(Lcom/miui/calendar/sync/ics/IcsFileImportActivity$e;Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
