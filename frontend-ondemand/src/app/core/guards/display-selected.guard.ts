import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot } from '@angular/router';

import { SelectedDisplayService } from '../services/selected-display.service';

@Injectable({
  providedIn: 'root'
})
export class DisplaySelectedGuard implements CanActivate {

  constructor(
    private selectedDisplayService: SelectedDisplayService,
    private router: Router
  ) { }

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean {
    if (this.selectedDisplayService.display.value == null) {
      this.router.navigate(['']);
      return false;
    }

    return true;
  }
}
