import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { DisplayListComponent } from './pages/display-list/display-list.component';
import { MediaListComponent } from './pages/media-list/media-list.component';

const routes: Routes = [
  { path: '', component: MediaListComponent },
  { path: 'display', component: DisplayListComponent },
  { path: '**', redirectTo: '/', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
