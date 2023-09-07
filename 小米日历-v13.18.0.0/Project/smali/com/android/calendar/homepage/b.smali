.class public final synthetic Lcom/android/calendar/homepage/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AgendaListLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AgendaListLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/b;->a:Lcom/android/calendar/homepage/AgendaListLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/b;->a:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {v0, p1}, Lcom/android/calendar/homepage/AgendaListLayout;->A(Lcom/android/calendar/homepage/AgendaListLayout;Landroid/view/View;)V

    return-void
.end method
