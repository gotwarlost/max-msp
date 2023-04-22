include('attrs');

attrs.make('foobar',[ 0.3, 0.3, 0.3, 1], attrs.types.color);
attrs.make('barbaz', 25, attrs.types.int);

function bang() {
    post('foobar', this.foobar,'\n');
    post('barbaz',this.barbaz,'\n')
}