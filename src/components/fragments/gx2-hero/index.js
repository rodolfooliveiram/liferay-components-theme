let colImages = document.getElementsByClassName('col-img');

for (let i = 1; i < colImages.length; i++) {
  colImages[i].addEventListener('mouseover', (e) => {
    e.currentTarget.classList.add('col-lg-6');
    e.currentTarget.classList.remove('col-lg-3');
    colImages[0].classList.add('col-lg-3');
    colImages[0].classList.remove('col-lg-6');
  });

  colImages[i].addEventListener('mouseout', (e) => {
    e.currentTarget.classList.add('col-lg-3');
    e.currentTarget.classList.remove('col-lg-6');
    colImages[0].classList.add('col-lg-6');
    colImages[0].classList.remove('col-lg-3');
  });
}
