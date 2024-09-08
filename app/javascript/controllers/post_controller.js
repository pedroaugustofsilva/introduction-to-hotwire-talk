import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['editButton']
  initialize() {
    if (this.editButtonTarget.dataset.postAuthor == this.currentUserId) {
      this.editButtonTarget.classList.remove('hidden')
    }
  }

  get currentUserId() {
    const metaTag = document.querySelector('meta[name="current-user-id"]')
    return metaTag ? metaTag.content : null
  }
}
