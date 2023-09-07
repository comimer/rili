.class public final synthetic Lcom/miui/calendar/view/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/view/MonthPanelContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/view/MonthPanelContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/view/q;->a:Lcom/miui/calendar/view/MonthPanelContainer;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/view/q;->a:Lcom/miui/calendar/view/MonthPanelContainer;

    invoke-static {v0}, Lcom/miui/calendar/view/MonthPanelContainer;->d(Lcom/miui/calendar/view/MonthPanelContainer;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
