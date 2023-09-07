.class public final synthetic Lcom/miui/calendar/search/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/search/SearchDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/search/SearchDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/search/i;->a:Lcom/miui/calendar/search/SearchDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/search/i;->a:Lcom/miui/calendar/search/SearchDetailsActivity;

    invoke-static {v0, p1}, Lcom/miui/calendar/search/SearchDetailsActivity;->Y(Lcom/miui/calendar/search/SearchDetailsActivity;Landroid/view/View;)V

    return-void
.end method
