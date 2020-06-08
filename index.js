function active() {
    var searchBox = document.getElementById('search_box');
    if (searchBox.value == 'Search...') {
        searchBox.value = '';
        searchBox.placeholder = 'Search...';
    }
}

function inactive() {
    var searchBox = document.getElementById('search_box');
    if (searchBox.value == '') {
        searchBox.value = 'Search...';
        searchBox.placeholder = '';
    }
}


